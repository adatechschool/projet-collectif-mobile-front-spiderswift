//
//  PinModelView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 03/09/2024.
//

import SwiftUI
import MapKit

struct PinModelView: View {
    let risk: String
    
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
    
    @State var show = true //can manage the state of your object
    
    var body: some View {
        
        ZStack {
            Circle()
                .stroke(.gray)
                .fill(colorBackPin())
                .frame(width: 43)
            Image(systemName: "figure.surfing")
                .foregroundColor(.white)
                .imageScale(.large)
            Circle()
                .stroke(.blue)
                .frame(width: 43)
                .scaleEffect(show ? 2.3 : 1.0)
                .animation(.easeOut(duration: 0.5))
                
        }
    }
}

#Preview {
    PinModelView(risk: "OK")
}


struct ExpandingCircle: View {
    @State private var scale: CGFloat = 1.0
    @State private var opacity: Double = 1.0
    
    var body: some View {
        ZStack {
            ForEach(0..<5) { i in
                Circle()
                    .stroke(Color.blue.opacity(0.5), lineWidth: 2)
                    .scaleEffect(scale)
                    .opacity(opacity)
                    .animation(
                        Animation.easeInOut(duration: 4)
                            .repeatForever(autoreverses: false)
                            .delay(Double(i) * 0.8),
                        value: scale
                    )
            }
        }
        .onAppear {
            scale = 3
            opacity = 0
        }
    }
}

struct ContentView: View {
    var body: some View {
        ExpandingCircle()
    }
}
