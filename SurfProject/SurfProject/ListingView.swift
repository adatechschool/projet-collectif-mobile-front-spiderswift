//
//  ListingView.swift
//  SurfProject
//
//  Created by Maud Gauthier on 30/08/2024.
//

import SwiftUI

struct ListingView: View {
    let listSpots = [
        Spot(
            name: "Audierne",
            imageName: "audierne",
            weather: ["Ensoleillé", "Pluvieux"],
            tide: ["Basse", "Haute"],
            swellSea: "1m-2m",
            wind: ["Nord-Ouest 15 km/h", "Ouest 10 km/h"],
            description: "Audierne est un spot idéal pour les surfeurs de tous niveaux, avec des vagues régulières et une belle plage."
        ),
        Spot(
            name: "Baie des Trépassés",
            imageName: "baie_des_trepassees",
            weather: ["Nuageux", "Venteux"],
            tide: ["Basse", "Montante"],
            swellSea: "2m-3m",
            wind: ["Sud-Ouest 20 km/h", "Nord 10 km/h"],
            description: "Un spot renommé pour ses vagues puissantes et son cadre spectaculaire, parfait pour les surfeurs expérimentés."
        ),
        Spot(
            name: "Barre d'Etel",
            imageName: "barre_detel",
            weather: ["Ensoleillé", "Variable"],
            tide: ["Haute", "Descendante"],
            swellSea: "1.5m-2m",
            wind: ["Ouest 15 km/h", "Sud-Ouest 20 km/h"],
            description: "Un spot de surf connu pour ses courants puissants et ses vagues variées, situé à l'embouchure de la Ria d'Etel."
        ),
        Spot(
            name: "Brest Blanc Sablons",
            imageName: "brest_blanc_sablons",
            weather: ["Nuageux", "Pluvieux"],
            tide: ["Montante", "Descendante"],
            swellSea: "2m-4m",
            wind: ["Nord-Ouest 25 km/h", "Nord 15 km/h"],
            description: "Un grand spot de surf à proximité de Brest, offrant des vagues puissantes et un cadre naturel magnifique."
        ),
        Spot(
            name: "Crozon",
            imageName: "crozon",
            weather: ["Ensoleillé", "Partiellement nuageux"],
            tide: ["Basse", "Haute"],
            swellSea: "1m-3m",
            wind: ["Sud-Ouest 10 km/h", "Est 5 km/h"],
            description: "La presqu'île de Crozon est un paradis pour les surfeurs, avec plusieurs spots offrant des vagues de qualité dans un environnement préservé."
        ),
        Spot(
            name: "Dinard",
            imageName: "dinard",
            weather: ["Pluvieux", "Nuageux"],
            tide: ["Haute", "Basse"],
            swellSea: "0.5m-1.5m",
            wind: ["Ouest 15 km/h", "Sud 10 km/h"],
            description: "Un spot de surf tranquille à proximité de Saint-Malo, idéal pour les surfeurs débutants avec ses vagues douces."
        ),
        Spot(
            name: "Donnant",
            imageName: "donnant",
            weather: ["Ensoleillé", "Variable"],
            tide: ["Montante", "Descendante"],
            swellSea: "2m-3m",
            wind: ["Sud-Ouest 15 km/h", "Ouest 20 km/h"],
            description: "Situé sur l'île de Belle-Île, Donnant est un spot de surf sauvage avec des vagues puissantes et un paysage impressionnant."
        ),
        Spot(
            name: "Douarnenez",
            imageName: "douarnenez",
            weather: ["Nuageux", "Ensoleillé"],
            tide: ["Basse", "Haute"],
            swellSea: "1m-2m",
            wind: ["Nord 10 km/h", "Nord-Ouest 15 km/h"],
            description: "Douarnenez est un spot de surf polyvalent, apprécié pour ses vagues constantes et son ambiance conviviale."
        ),
        Spot(
            name: "Fort Bloqué",
            imageName: "fort_bloque",
            weather: ["Pluvieux", "Nuageux"],
            tide: ["Descendante", "Montante"],
            swellSea: "1.5m-2.5m",
            wind: ["Ouest 20 km/h", "Sud-Ouest 15 km/h"],
            description: "Ce spot est populaire parmi les locaux pour ses vagues régulières et son emplacement à proximité d'un fort historique."
        ),
        Spot(
            name: "Guidel Plage de la falaise",
            imageName: "guidel_plage_de_la_falaise",
            weather: ["Ensoleillé", "Venteux"],
            tide: ["Basse", "Haute"],
            swellSea: "1m-2m",
            wind: ["Nord-Ouest 20 km/h", "Est 10 km/h"],
            description: "Une plage pittoresque avec de bonnes conditions de surf, souvent fréquentée par les amateurs de sports nautiques."
        ),
        Spot(
            name: "L'ile aux Vaches",
            imageName: "ile_aux_vaches",
            weather: ["Nuageux", "Ensoleillé"],
            tide: ["Montante", "Descendante"],
            swellSea: "2m-4m",
            wind: ["Ouest 25 km/h", "Sud-Ouest 20 km/h"],
            description: "Connu pour ses grosses vagues et ses conditions exigeantes, c'est un spot réservé aux surfeurs les plus expérimentés."
        ),
        Spot(
            name: "La Palue",
            imageName: "la_palue",
            weather: ["Ensoleillé", "Nuageux"],
            tide: ["Basse", "Haute"],
            swellSea: "2m-3m",
            wind: ["Nord-Ouest 15 km/h", "Sud 10 km/h"],
            description: "Situé sur la presqu'île de Crozon, ce spot offre des vagues de haute qualité et un environnement naturel exceptionnel."
        ),
        Spot(
            name: "La Torche",
            imageName: "la_torche",
            weather: ["Ensoleillé", "Pluvieux"],
            tide: ["Montante", "Descendante"],
            swellSea: "1m-3m",
            wind: ["Ouest 20 km/h", "Sud-Ouest 15 km/h"],
            description: "La Torche est l'un des spots de surf les plus populaires en Bretagne, offrant des vagues pour tous les niveaux et un paysage spectaculaire."
        )
    ]
    
    var body: some View {
        NavigationSplitView {
            List(listSpots, id: \.name) {
                Spot in
                NavigationLink {
                    ContentView()
                } label: {
                HStack {
                    Image(Spot.imageName)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 70, height:70)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Text(Spot.name)
                }
            }
        }
    } detail: {
        Text("Sélectionnez un spot de surf de la liste pour en savoir plus")
    }
}
}

#Preview {
ListingView()
}
