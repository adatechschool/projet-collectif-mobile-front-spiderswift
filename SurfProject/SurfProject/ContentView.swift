//
//  ContentView.swift
//  SurfProject
//
//  Created by Bertrand MARIE on 26/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("1989430")
                .resizable()
                .scaledToFill()
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(Color.green)
                Text("Hello, GreenWorld !")
                    .foregroundColor(Color.green)
                HStack {
                    Image(systemName: "figure.surfing")
                        .padding(5.0)
                        .imageScale(.large)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("SpiderSurf Open !")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                Rectangle()
                    .frame(width: 1000, height: 80)
                    .foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    ContentView()
}
