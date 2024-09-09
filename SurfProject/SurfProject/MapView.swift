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
    
    var Surf_Spot = SurfSpotIViewList()
    
    var body: some View {
        Map(position: $cameraPosition) {
            ForEach(Surf_Spot.SurfSpotArr, id: \.id) { SurfSpot in
                Marker(SurfSpot.name, coordinate: CLLocationCoordinate2D(latitude: SurfSpot.latitude, longitude: SurfSpot.longitude))
            }
        }
        .onAppear(perform: {
            Task {
                await Surf_Spot.SurfSpotArr
            }
        })
    
            ZStack {
                Rectangle()
                    .frame(width: 1000, height: 80)
                    .foregroundColor(.blue)
                    .padding(-6)
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
