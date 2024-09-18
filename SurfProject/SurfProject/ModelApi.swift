//
//  ModelApi.swift
//  SurfProject
//
//  Created by Maud Gauthier on 17/09/2024.
//

import Foundation

struct SurfSpot : Identifiable, Decodable {
    var id: Int
    let name: String
    let image: String
    let city: String
    let latitude: Double
    let longitude: Double
    let risk: String
    let description: String
}
