//
//  SpotDetailsView.swift
//  SurfProject
//
//  Created by Maud Gauthier on 30/08/2024.
//

import SwiftUI

struct SpotDetailsView: View {
    var body: some View {
<<<<<<< HEAD
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
=======
        
    GeometryReader { geometry in
        VStack {
            Image("audierne")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width)
            
            HStack{
                Image(systemName: "mappin.and.ellipse")
                Text("Nom du Spot : ")
                Text("Audierne")
            }
            .font(.title)
            .padding()
            
            VStack(alignment: .leading){
                
                Text("Conditions de Surf aujourd'hui :")
                    .padding()
                    .bold()
                
                HStack{
                    Image(systemName: "cloud.sun")
                    Text("Météo : ")
                    Text("Ensoleillée  |  28°C")
                }
                    .padding()
                
                HStack{
                    Image(systemName: "moon.haze")
                    Text("Marée : ")
                    Text("Basse 5h03  |  Pleine 12h01")
                }
                    .padding()
                
                HStack{
                    Image(systemName: "water.waves")
                    Text("Houle : ")
                    Text("2,34 m")
                }
                    .padding()
                
                HStack{
                    Image(systemName: "wind")
                    Text("Vent : ")
                    Text("Vitesse 15km/h  |  Direction NO")
                }
                    .padding()
            }
            .padding(.vertical, 15.0)
            .background(RoundedRectangle(cornerRadius: 10).fill(.beige))
            }
        }
>>>>>>> f891b69 (SpotDetailsView V2)
    }
}

#Preview {
    SpotDetailsView()
}
