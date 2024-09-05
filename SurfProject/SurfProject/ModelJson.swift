//
//  ModelJSON.swift
//  SurfProject
//
//  Created by Maud Gauthier on 03/09/2024.
//

import Foundation

//let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

// MARK: - Welcome
struct Welcome: Codable {
    let records: [Record]
    let offset: String
}

// MARK: - Record
struct Record: Codable, Identifiable {
    let id: String
    let fields: Fields
    let createdTime: String
}

// MARK: - Fields
struct Fields: Codable {
    let surfBreak: [String]
    let difficultyLevel: Int
    let destination, geocode: String
    let influencers: [String]
    let magicSeaweedLink: String
    let photos: [Photo]
    let peakSurfSeasonBegins, destinationStateCountry, peakSurfSeasonEnds, address: String

    enum CodingKeys: String, CodingKey {
        case surfBreak = "Surf Break"
        case difficultyLevel = "Difficulty Level"
        case destination = "Destination"
        case geocode = "Geocode"
        case influencers = "Influencers"
        case magicSeaweedLink = "Magic Seaweed Link"
        case photos = "Photos"
        case peakSurfSeasonBegins = "Peak Surf Season Begins"
        case destinationStateCountry = "Destination State/Country"
        case peakSurfSeasonEnds = "Peak Surf Season Ends"
        case address = "Address"
    }
}

// MARK: - Photo
struct Photo: Codable, Identifiable {
    let id: String
    let url: String
    let filename: String
    let size: Int
    let type: String
    let thumbnails: Thumbnails
}

// MARK: - Thumbnails
struct Thumbnails: Codable {
    let small, large, full: Full
}

// MARK: - Full
struct Full: Codable {
    let url: String
    let width, height: Int
}

