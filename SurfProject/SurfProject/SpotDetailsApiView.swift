//
//  SpotDetailsApiView.swift
//  SurfProject
//
//  Created by Maud Gauthier on 18/09/2024.
//

import SwiftUI

struct SpotDetailsApiView: View {
    
    let spot: SurfSpot
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Image(spot.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width)
                
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                        .padding(.trailing, 2.0)
                    Text(spot.name)
                }
                .font(.title)
                .padding()
                
                Text(spot.description)
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
                    }
                    .padding()
                    
                    HStack{
                        Image(systemName: "water.waves")
                        Text("Houle : ")
                    }
                    .padding()
                    
                    HStack{
                        Image(systemName: "wind")
                        Text("Vent : ")
                    }
                    .padding()
                }
                .padding(.vertical, 15.0)
                .background(RoundedRectangle(cornerRadius: 10).fill(.beige)
                    .stroke(.black, lineWidth: 2))
                
            }
        }
    }
}

#Preview {
    SpotDetailsApiView(spot: SurfSpot(
        id: 3,
        name: "Barre d'Etel",
        image: "barre_detel",
        city: "Etel",
        latitude: 47.651077,
        longitude: -3.225147,
        risk: "ok",
        description: "Un spot de surf connu pour ses courants puissants et ses vagues variées, situé à l'embouchure de la Ria d'Etel."))
}
