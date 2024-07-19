//
//  Animation.swift
//  Animations
//
//  Created by Emine CETINKAYA on 19.07.2024.
//

import SwiftUI

struct Animation: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack{
            Button("Tap Me"){
                withAnimation{
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

#Preview {
    Animation()
}
