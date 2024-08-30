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
        center: CLLocationCoordinate2D(latitude: 46.915052, longitude: -2.041419),
        span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
    ))
    
    var body: some View {
        Map(position: $cameraPosition) {
            Marker("Les Sables d'Olonne", coordinate: CLLocationCoordinate2D(latitude: 46.496687, longitude: -1.784134)).tint(.blue)
            Marker("Saint Jea de Monts", coordinate: CLLocationCoordinate2D(latitude: 46.787306, longitude: -2.071404)).tint(.blue)
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
