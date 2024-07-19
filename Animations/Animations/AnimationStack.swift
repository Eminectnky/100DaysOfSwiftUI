//
//  AnimationStack.swift
//  Animations
//
//  Created by Emine CETINKAYA on 19.07.2024.
//

import SwiftUI

struct AnimationStack: View {
    
    @State private var enabled = false
    var body: some View {
        Button("Tap Me"){
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundStyle(.white)
        .animation(nil, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration:1, bounce: 0.9), value: enabled)
       
    }
}

#Preview {
    AnimationStack()
}
