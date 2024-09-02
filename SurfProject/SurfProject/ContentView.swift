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
        NavigationStack {
            
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
            
            
            
            //Creation buttons
            
            HStack {
                VStack(spacing:4) {
                    
                    Button(action: {autourDeMoi()}){
                        
                        Image(systemName: "compass.drawing")
                            .foregroundColor(Color.yellow)
                        
                        NavigationLink("Autour de moi") {
                            
                            ListingView()
                        }
                        .foregroundColor(.white)
                    }
                }
                
                .padding()
                .background(LinearGradient(gradient: Gradient(colors:[Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(60.0)
                .shadow(color: .gray, radius: 20.0, x: 20.0, y: 10.0)
                
            }
            
            
            VStack(spacing:4){
                
                Button(action: {lieux()}){
                    Image(systemName: "figure.surfing")
                        .foregroundColor(Color.yellow)
                    
                    NavigationLink("Autour d'un lieu") {
                        DetailView()
                    }
                    .foregroundColor(.white)
                }
                .padding()
                .background(LinearGradient(gradient: Gradient(colors:[Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(60.0)
                .shadow(color: .gray, radius: 20.0, x: 20.0, y: 10.0)
            }
            .padding()
            
            VStack(spacing:4){
                
                Button(action: {menu()}){
                    Image(systemName: "list.star")
                        .foregroundColor(Color.yellow)
                    
                    NavigationLink("Menu") {
                        DetailView()
                    }
                    .foregroundColor(.white)
                }
                .padding()
                .background(LinearGradient(gradient: Gradient(colors:[Color.red,Color.blue]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(60.0)
                .shadow(color: .gray, radius: 20.0, x: 20.0, y: 10.0)
            }
        }
    }
}

    struct DetailView: View {
        var body: some View {
            Text("Detail View")
                .font(.largeTitle)
                .navigationTitle("Detail")
        }
    }

    
#Preview {
    ContentView()
    
}
