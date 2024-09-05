//
//  ListingJsonView.swift
//  SurfProject
//
//  Created by Maud Gauthier on 03/09/2024.
//

import SwiftUI

struct ListingJsonView: View {
    
    let modelJsons: Record = load("Sources.json")
    
    var body: some View {
        List(modelJsons.records, id: \.address) {
            spot in

            HStack {
                AsyncImage(url: URL(string: spot.photos)) {
                    image in image.image?
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 70, height:70)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                    Text(spot.surfBreak)
            }
        }
    }
}

#Preview {
    ListingJsonView()
}
