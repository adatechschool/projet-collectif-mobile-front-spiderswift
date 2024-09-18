//
//  AnimationUsView.swift
//  SurfProject
//
//  Created by Cindy Lecat on 18/09/2024.
//

import SwiftUI

struct AnimationUsView: View {
    @State private var moveGradient = true
    
    var body: some View {
        
        let screenWidth = UIScreen.main.bounds.size.width
        Rectangle()
            .overlay {
                LinearGradient(colors: [.clear, .blue, .clear], startPoint: .leading, endPoint: .trailing)
                    .frame(width: 70)
                    .offset(x: moveGradient ? -screenWidth/2 : screenWidth/2)
            }
            .animation(.linear(duration: 2).repeatForever(autoreverses: false), value:moveGradient)
            .mask {
                VStack {
                    Text("Work in Progress...")
                        .font(.custom("Chalkduster", size:42, relativeTo: .title))
                    Spacer()
                }
            }
            .foregroundColor(.red)
            .onAppear {
                self.moveGradient.toggle()
            }
            
    }
}

#Preview {
    AnimationUsView()
}
