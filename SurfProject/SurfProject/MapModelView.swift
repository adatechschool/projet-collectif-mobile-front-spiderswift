//
//  MapModelView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 02/09/2024.
//

import SwiftUI
import MapKit

struct MapModelView: View {
    var body: some View {
        Map() {
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
        }
    }
}


#Preview {
    MapModelView()
}
