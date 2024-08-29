//
//  ContentView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 26/08/2024.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        VStack {
            ZStack(alignment: .topLeading) {
                Image("spiderSurfing2")
                    .resizable(resizingMode: .tile)
                
                VStack(alignment: .leading) {
                    Text("Spider Surf")
                        .font(.title)
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.leading)
                        .bold()
                    Spacer() // Ajoute de l'espace pour pousser le texte en haut
                }
                .padding() // Optionnel : ajouter de l'espace autour du texte
            }
            
            HStack{
                Image(systemName: "compass.drawing")
                    .foregroundColor(Color.blue)
                    .imageScale(.large)
                    .padding(.trailing, 60.0)
                Image(systemName: "location")
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .padding(.trailing, 60.0)
                Image(systemName: "figure.surfing")
                    .foregroundColor(.blue)
                    .imageScale(.large)
            }
            .padding(.vertical, 2.0)
        }
    }
}

#Preview {
    ContentView()
}
