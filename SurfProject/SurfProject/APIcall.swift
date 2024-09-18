//
//  APIcall.swift
//  SurfProject
//
//  Created by Cindy Lecat on 17/09/2024.
//

import SwiftUI

struct URLImage: View {
    let urlString: String
    
    @State var data: Data?
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 70)
                .background(Color.gray)
        }
        else {
        Image(systemName: "video")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 70)
                .background(Color.gray)
                .onAppear {
                    fetchData()
                }
        }
    }
    private func fetchData() {
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in self.data = data
        }
        task.resume()
    }
}


struct Spots: Hashable, Codable {
    let name: String
    let image: String
}

class ViewModel: ObservableObject {
    @Published var spots:[Spots] = []
    
    func fetch() {
        guard let url = URL(string: "http://localhost:8080/surfspots") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            //convert to JSON
            do {
                let spots = try JSONDecoder().decode([Spots].self, from: data)
                DispatchQueue.main.async {
                    self?.spots = spots
                }
            }
            catch {
                print(error)
            }
        }
        task.resume()
    }
}

struct APIcall: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.spots, id:\.self) { spots in
                    HStack {
                        URLImage(urlString: spots.image)
                            
                        Text(spots.name)
                            .bold()
                    }
                    .padding(3)
                }
            }
            .navigationTitle("Spots")
            .onAppear {
                viewModel.fetch()
            }
        }
    }
}


#Preview {
    APIcall()
    
}
