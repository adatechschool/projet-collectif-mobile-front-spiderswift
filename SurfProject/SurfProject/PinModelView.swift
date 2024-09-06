//
//  PinModelView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 03/09/2024.
//

import SwiftUI
import MapKit

struct PinModelView: View {
    @State private var isShowingSpotInfos = false //save pin action on tap
    let risk: String //risk variable for the data of spot difficulty
    
    //States of echo button spot effect
    @State private var scale: CGFloat = 1.0
    @State private var opacity: Double = 1.0
    
    var Surf = SurfSpotIViewList()
    
    func colorBackPin() -> Color {
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
        
    // ----------------> Start effect button Pin
        ZStack {
            ForEach(0..<3) { echo in //loop for echo effect pin
                Button(action: {
                    isShowingSpotInfos.toggle() //on-off effect sheet
                })
                { //button view
                    Circle() //central button with icon
                        .stroke(.gray)
                        .fill(colorBackPin())
                        .frame(width: 43)
                        .overlay(
                            Image(systemName: "figure.surfing")
                                .foregroundColor(.white)
                                .imageScale(.large))
                } //end of button view
                
                Circle() //echo circles effect
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    .frame(width: 43)
                    .scaleEffect(scale)
                    .opacity(opacity)
                    .animation(
                        Animation.easeInOut(duration: 3)
                            .repeatForever(autoreverses: false)
                            .delay(Double(echo) * 1.1), value: scale
                    )
            } //end echo effect loop
        } //end ZStack
    //--------------------> End efect button Pin
                
                    .sheet(isPresented: $isShowingSpotInfos) {
                        let findSpot = Surf.SurfSpotArr[0]
                        //ForEach(Surf.SurfSpotArr, id: \.id) { info in
                    
                    VStack { //sheet view info of spot
                        Text(findSpot.name).font(.title).fontWeight(.bold)
                        Text("Latitude: \(findSpot.latitude)")
                        Text("Longitude: \(findSpot.longitude)")
                        HStack {
                            Text("Status:")
                            Text(findSpot.risk)
                                .foregroundColor(colorBackPin())
                                .fontWeight(.bold)
                        }
                    } //end of view info of spot
                    .presentationDetents([.medium, .large])
                    .presentationBackground(.thinMaterial)
                } //end of sheet isShowingSpotInfos
            //}
        
        .onAppear { //scale & opacity of echo circle
            scale = 2
            opacity = 0
        } //onAppear
        
    } //end body
} //end struct

#Preview {
    PinModelView(risk: "")
}
