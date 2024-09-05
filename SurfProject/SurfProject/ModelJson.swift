//
//  ModelJSON.swift
//  SurfProject
//
//  Created by Maud Gauthier on 03/09/2024.
//

import Foundation
import SwiftUI

struct Record: Codable {
    let records: [SpotJson]
}

struct SpotJson: Codable {
    let surfBreak: String
    let photos: String
    let address: String
    
    enum CodingKeys: String, CodingKey {
        case surfBreak = "Surf Break"
        case photos = "Photos"
        case address = "Address"
    }
}
