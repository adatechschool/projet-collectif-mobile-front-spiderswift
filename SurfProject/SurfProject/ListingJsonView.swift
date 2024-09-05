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
            Text(spot.surfBreak)
        }
    }
}

#Preview {
    ListingJsonView()
}
