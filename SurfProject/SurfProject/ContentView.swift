//
//  ContentView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 26/08/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 1000, height: 80)
                .foregroundColor(.blue)
                    HStack {
                        Image(systemName: "figure.surfing")
                            .imageScale(.large)
                            .foregroundColor(.white)
                        Text("Welcone in SpiderSurf")
                            .foregroundColor(.white)
                    }
                }
    }
}

#Preview {
    ContentView()
}
