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
    @State private var scale: CGFloat = 1.0
    @State private var opacity: Double = 1.0
    
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
                Circle()
                    .stroke(.gray)
                    .fill(colorBackPin())
                    .frame(width: 43)
                Image(systemName: "figure.surfing")
                    .foregroundColor(.white)
                    .imageScale(.large)
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
