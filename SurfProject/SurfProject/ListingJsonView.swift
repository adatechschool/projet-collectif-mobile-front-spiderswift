//
//  ListingJsonView.swift
//  SurfProject
//
//  Created by Maud Gauthier on 03/09/2024.
//

import SwiftUI

struct ListingJsonView: View {
    
    let modelJsons: Welcome = load("Sources.json")
    
    var body: some View {
        NavigationView {
                    List(modelJsons.records) { record in
                        HStack {
                            // Afficher la première photo si disponible
                            if let firstPhoto = record.fields.photos.first {
                                AsyncImage(url: URL(string: firstPhoto.url)) { phase in
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
                            
                            // Afficher le premier "Surf Break" si disponible
                            VStack(alignment: .leading) {
                                if let firstSurfBreak = record.fields.surfBreak.first {
                                    Text(firstSurfBreak)
                                        .font(.headline)
                                } else {
                                    Text("Surf Break Inconnu")
                                        .font(.headline)
                                }
                                
                                // Optionnel : Afficher la destination
                                Text(record.fields.destination)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.vertical, 5)
                    }
                    .navigationTitle("Surf Breaks")
                }
            }
        }

        //        List(modelJsons.records, id: \.id) {
        //            spot in
        //
        //            HStack {
        //                AsyncImage(url: URL(string: spot.photos)) {
        //                    image in image.image?
        //                        .resizable()
        //                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        //                        .frame(width: 70, height:70)
        //                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        //                }
        //                    Text(spot.surfBreak)
        //            }
        //        }
        //    }


#Preview {
    ListingJsonView()
}
