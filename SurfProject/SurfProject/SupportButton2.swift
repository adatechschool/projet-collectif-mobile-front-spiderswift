//
//  SupportButton2.swift
//  SurfProject
//
//  Created by Cindy Lecat on 18/09/2024.
//

import SwiftUI

struct SupportButton2: View {
    var text: String
    var icone: String
    
    var body: some View {
        Button(action: {}){
            Image(systemName: icone)
                .foregroundColor(Color.yellow)
            
            NavigationLink(text) {
                MapView()
            }
            .font(.custom("Chalkduster", size: 14))
            .foregroundColor(.white)
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors:[Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(60.0)
        .shadow(color: .gray, radius: 20.0, x: 20.0, y: 10.0)
    }
}

struct DetailView2: View {
    var body: some View {
        Text("Map")
            .font(.largeTitle)
            .navigationTitle("Detail")
    }
}

#Preview {
    SupportButton2(text: "autour de moi", icone: "compass.drawing")
}
