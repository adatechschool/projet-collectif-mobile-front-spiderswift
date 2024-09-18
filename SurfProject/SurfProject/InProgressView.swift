//
//  InProgressView.swift
//  SurfProject
//
//  Created by Cindy Lecat on 18/09/2024.
//

import SwiftUI

struct InProgressView: View {
    var body: some View {
        
        VStack {
            ZStack {
                Image("nous")
                    .resizable(resizingMode: .tile)
                    .aspectRatio(contentMode: .fit)
                    .frame(width:320)
                
                VStack {
                    AnimationUsView()
                }
            }
        }
    }
}
#Preview {
    InProgressView()
}
