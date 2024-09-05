//
//  ParseData.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 04/09/2024.
//

import Foundation

func makeAPICall(url: URL, token: String, completion: @escaping (Result<Data, Error>) -> Void) {
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    request.setValue("Bearer key", forHTTPHeaderField: "Authorization")
    
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        if let error = error {
            completion(.failure(error))
            return
        }
        
        guard let data = data else {
            completion(.failure(NSError(domain: "NoDataError", code: -1, userInfo: nil)))
            return
        }
        
        completion(.success(data))
    }
    
    task.resume()
}

let apiURL = URL(string: "https://api.airtable.com/v0/appb1wPyQ3hv7zl38/Surf%20Destinations")!
let authToken = "key"

//makeAPICall(url: apiURL, token: authToken) { result in
//    switch result {
//    case .success(let data):
//        // Traiter les données reçues
//        print("Données reçues : \(String(data: data, encoding: .utf8) ?? "")")
//    case .failure(let error):
//        // Gérer l'erreur
//        print("Erreur : \(error.localizedDescription)")
//    }
//}
