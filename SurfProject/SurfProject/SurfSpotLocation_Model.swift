//
//  SurfSpotLocation_Model.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 02/09/2024.
//

import Foundation

public struct ViewModel_SurfSpot: Identifiable, Codable {
    public let id = UUID()
    
    let name: String
    let latitude: Float
    let longitude: Float
    
}
