//
//  ContentView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 26/08/2024.
//

import SwiftUI

struct ContentView : View {
    
    func autourDeMoi() {
          print("Autour de moi")
      }
      
    func lieux() {
          print("Saint Brévin les Pins")
      }
      
    func menu() {
          print("Aloha")
      }
    
    var body: some View {
        
        VStack {
            ZStack(alignment: .topLeading) {
                Image("spiderSurfing2")
                    .resizable(resizingMode: .tile)
                    .aspectRatio(contentMode: .fit)
                    .frame(width:400)
                
                VStack(alignment: .leading) {
                    Text("Spider Surf")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.leading)
                    Spacer() // Ajoute de l'espace pour pousser le texte en haut
                }
                .padding() // Optionnel : ajouter de l'espace autour du texte
            }
            
        }
        
        HStack {
            VStack(spacing:10) {
                Button(action: {autourDeMoi()}){
                    Image(systemName: "compass.drawing")
                        .foregroundColor(Color.orange)
                    Text("Autour de moi")
                }
                
                .buttonStyle(BorderedProminentButtonStyle())
            }
            
            VStack(spacing:10){
                Button(action: {lieux()}){
                    Image(systemName: "figure.surfing")
                        .foregroundColor(Color.orange)
                    Text("Autour d'un lieu")
                }
                .buttonStyle(BorderedProminentButtonStyle())
            }
            .padding()
            VStack(spacing:10){
                Button(action: {menu()}){
                    Image(systemName: "list.star")
                        .foregroundColor(Color.orange)
                    Text("Menu")
                }
                .buttonStyle(BorderedProminentButtonStyle())
            }
        }
    }
}

#Preview {
    ContentView()
}
