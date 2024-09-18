//
//  ListingApiView.swift
//  SurfProject
//
//  Created by Maud Gauthier on 17/09/2024.
//

import SwiftUI

struct ListingApiView: View {
    @State private var isLoading = true
    @State private var surfSpots: [SurfSpot] = []
    @State private var selectedSpot: SurfSpot?

    var body: some View {
        NavigationSplitView {
            if isLoading {
                ProgressView("Loading...")
            } else if surfSpots.isEmpty {
                Text("Aucune donnée disponible")
            } else {
                List(surfSpots, id: \.name) { spot in
                    NavigationLink(destination: SpotDetailsApiView(spot: spot)) {
                        HStack {
                            // Afficher l'image si disponible
                            if let url = URL(string: spot.image) {
                                AsyncImage(url: url) { phase in
                                    switch phase {
                                    case .empty:
                                        ProgressView()
                                            .frame(width: 70, height: 70)
                                    case .success(let image):
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                    case .failure:
                                        Image(systemName: "photo")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 70, height: 70)
                                    @unknown default:
                                        EmptyView()
                                    }
                                }
                            } else {
                                // Image de remplacement si aucune photo
                                Image(systemName: "photo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                            }
                            
                            // Afficher les informations du surf spot
                            VStack(alignment: .leading) {
                                Text(spot.name)
                                    .font(.headline)
                                
                                Text(spot.city)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.vertical, 5)
                    }
                }
                 .navigationTitle("Surf Spots")
             }
        } detail: {
                if let selectedSpot = selectedSpot {
                    SpotDetailsApiView(spot: selectedSpot)
                } else {
                    Text("Select a surf spot")
                        .font(.title)
                        .foregroundColor(.secondary)
                }
        }
        .onAppear {
            fetchSurfSpots()
        }
    }
    
    // Fonction pour récupérer les spots de surf
    func fetchSurfSpots() {
        // L'URL de l'API
        guard let url = URL(string: "http://localhost:8080/surfspots") else {
                    print("URL invalide")
                    return
                }
        
        // Créer la requête
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Créer la tâche de requête
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("Erreur: \(error.localizedDescription)")
                return
            }
            
            // Vérifier le code de statut HTTP
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                print("Réponse serveur invalide")
                return
            }
            
            // Traiter les données reçues
            if let data = data {
                do {
                    let jsonResponse = try JSONDecoder().decode([SurfSpot].self, from: data)
                    DispatchQueue.main.async {
                        self.surfSpots = jsonResponse
                        self.isLoading = false
                    }
                } catch {
                    print("Erreur lors du décodage JSON: \(error.localizedDescription)")
                }
            }
        }
        
        // Lancer la requête
        task.resume()
    }
}

#Preview {
    ListingApiView()
}
