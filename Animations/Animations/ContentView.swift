//
//  ContentView.swift
//  Animations
//
//  Created by Emine CETINKAYA on 19.07.2024.
//

import SwiftUI

struct ContentView: View {
//    @State private var animationAmount = 1.0
    @State private var animationAmount = 0.0

    var body: some View {
//        print(animationAmount)
//        
//         return VStack{
//            Stepper("Scale amount", value: $animationAmount.animation(
//                .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)
//            ), in: 1...10)
//            
//            Spacer()
//            
            Button("Tap Me"){
//                animationAmount += 1
                withAnimation(.spring(duration: 1, bounce: 0.5)){
                    animationAmount += 360
                }
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
//            .scaleEffect(animationAmount)
            .rotation3DEffect(
                .degrees(animationAmount),axis: (x: 1, y: 0, z: 0))
        }
//        Button("Tap Me") {
//            animationAmount += 1
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .overlay(
//        Circle()
//            .stroke(.red)
//            .scaleEffect(animationAmount)
//            .opacity(2 - animationAmount)
//            .animation(.easeInOut(duration: 1)
//                       .repeatForever( autoreverses: false),
//                       value: animationAmount
//            )
//        )
//        .onAppear{
//            animationAmount = 2
//        }
    }
//}

#Preview {
    ContentView()
}
