//
//  PinModelView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 03/09/2024.
//

import SwiftUI
import MapKit

struct PinModelView: View {
    @State private var isShowingSpotInfos = false //action for pin on tap
    let risk: String //risk variable for the data of spot difficulty
    
    //States of echo button spot effect
    @State private var scale: CGFloat = 1.0
    @State private var opacity: Double = 1.0
    
    var SpotS = SurfSpotIViewList()
    
    func colorBackPin() -> Color{
        switch risk {
        case "OK":
            return .green
        case "Medium":
            return .orange
        case "Dangerous":
            return .red
        default:
            return .blue
        }
    }
    
    var body: some View {
        
        ZStack {
            ForEach(0..<3) { i in
                Button(action: {
                    isShowingSpotInfos.toggle()
                }) {
                    Circle()
                        .stroke(.gray)
                        .fill(colorBackPin())
                        .frame(width: 43)
                        .overlay(
                            Image(systemName: "figure.surfing")
                                .foregroundColor(.white)
                                .imageScale(.large))
                }
                .sheet(isPresented: $isShowingSpotInfos) {
                    var findSpot = SpotS.SurfSpotArr[0]
                    //ForEach(SpotS.SurfSpotArr, id: \.id) { info in
                    
                    VStack {
                        Text(findSpot.name).font(.title).fontWeight(.bold)
                        Text("Latitude: \(findSpot.latitude)")
                        Text("Longitude: \(findSpot.longitude)")
                        HStack {
                            Text("Status:")
                            Text(findSpot.risk)
                                .foregroundColor(colorBackPin())
                                .fontWeight(.bold)
                        }
                    }
                    .presentationDetents([.medium, .large])
                    .presentationBackground(.thinMaterial)
                }
            //}
                Circle()
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    .frame(width: 43)
                    .scaleEffect(scale)
                    .opacity(opacity)
                    .animation(
                        Animation.easeInOut(duration: 3)
                            .repeatForever(autoreverses: false)
                            .delay(Double(i) * 1.1), value: scale
                    )
            }
        }
        .onAppear {
            scale = 2
            opacity = 0
        }
    }
}

#Preview {
    PinModelView(risk: "OK")
}
