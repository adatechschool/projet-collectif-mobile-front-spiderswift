//
//  ContentView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 26/08/2024.
//

import SwiftUI

struct ContentView : View {
    
<<<<<<< HEAD
    
=======
<<<<<<< HEAD
    func autourDeMoi() {
          print("Autour de moi")
      }
      
    func lieux() {
          print("Saint Brévin les Pins")
      }
      
    func menu() {
          print("Aloha")
      }
>>>>>>> 59d6c0f (rebase continue)
    
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
                    SupportButton(text: "Autour d'un lieu", icone: "figure.surfing")
                    SupportButton(text: "Menu",icone: "list.star")
                }
            }
            
        }
    }
}
<<<<<<< HEAD
    
=======

=======
    
    
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
                    SupportButton(text: "Autour d'un lieu", icone: "figure.surfing")
                    SupportButton(text: "Menu",icone: "list.star")
                }
            }
            
        }
    }
}
    
>>>>>>> f195875 (update de la page principale)
>>>>>>> 59d6c0f (rebase continue)
#Preview {
    ContentView()
    
}
