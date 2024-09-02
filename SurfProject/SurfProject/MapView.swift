//
//  MapView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 30/08/2024.
//

import SwiftUI
import MapKit
import CoreLocationUI

struct MapView: View {
    @State private var cameraPosition: MapCameraPosition = .region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 46.915052, longitude: -2.041419),
        span: MKCoordinateSpan(latitudeDelta: 2.1, longitudeDelta: 0.9)
    ))
    
    var body: some View {
        Map(position: $cameraPosition) {
            Annotation("Les Sables d'Olonne", coordinate: CLLocationCoordinate2D(latitude: 46.496687, longitude: -1.784134)) {
                Circle()
                    .foregroundColor(.orange)
                    .frame(width: 43, height: 43)
                    .overlay {
                        Image(systemName: "figure.surfing")
                            .foregroundColor(.white)
                            .imageScale(.large)
                    }
            }
            Annotation("Saint Jean de Monts", coordinate: CLLocationCoordinate2D(latitude: 46.787306, longitude: -2.071404)) {
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 43, height: 43)
                    .overlay {
                        Image(systemName: "figure.surfing")
                            .foregroundColor(.white)
                            .imageScale(.large)
                    }
            }
            Annotation("Saint Gilles Croix de Vie", coordinate: CLLocationCoordinate2D(latitude: 46.688300, longitude: -1.938300)) {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 43, height: 43)
                    .overlay {
                        Image(systemName: "figure.surfing")
                            .foregroundColor(.white)
                            .imageScale(.large)
                    }
                }
            }
    
            ZStack {
                Rectangle()
                    .frame(width: 1000, height: 80)
                    .foregroundColor(.blue)
                HStack {
                    Circle()
                        .frame(width: 43, height: 43)
                        .foregroundColor(.white)
                        .overlay {
                            Image(systemName: "surfboard.fill")
                                .imageScale(.large)
                                .foregroundColor(.blue)
                        }
                    Text("SpiderSurf Open !")
                        .foregroundColor(.white)
                }
            }
        }
    
}

#Preview {
    MapView()
}
