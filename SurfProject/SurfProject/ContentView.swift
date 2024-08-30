//
//  ContentView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 26/08/2024.
//

import SwiftUI
import MapKit
import CoreLocationUI

struct ContentView: View {
    @State private var cameraPosition: MapCameraPosition = .region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 46.496687, longitude: -1.784134),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    ))
    
    var body: some View {
        Map {
            Marker("Les Sables d'Olonne", coordinate: CLLocationCoordinate2D(latitude: 46.496687, longitude: -1.784134)).tint(.blue)
        }
    
    
            ZStack {
                Rectangle()
                    .frame(width: 1000, height: 80)
                    .foregroundColor(.blue)
                HStack {
                    Image(systemName: "figure.surfing")
                        .imageScale(.large)
                        .foregroundColor(.white)
                    Text("SpiderSurf Open !")
                        .foregroundColor(.white)
                }
            }
        }
    
}

#Preview {
    ContentView()
}
