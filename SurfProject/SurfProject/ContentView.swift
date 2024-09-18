//
//  ContentView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 26/08/2024.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                ZStack {
                    Image("spidermanSurfing")
                        .resizable(resizingMode: .tile)
                        .aspectRatio(contentMode: .fit)
                        .frame(width:400)
                    
                    VStack {
                        AnimationTitle()
                    }
                    .padding() // Optionnel : ajouter de l'espace autour du texte
                }
                
                //Creation buttons
                
                HStack {

                    SupportButton(text: "Autour de moi", icone: "compass.drawing")
                    SupportButton(text: "Spots de Surf", icone: "figure.surfing")
                    SupportButton(text: "Menu",icone: "list.star")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
