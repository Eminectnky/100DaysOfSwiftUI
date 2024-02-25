//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Emine CETINKAYA on 23.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Your content")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.indigo.gradient)
//
//        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
//
//        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
 
            
//        LinearGradient(stops: [
//            .init(color: .white, location: 0.45),
//            .init(color: .black, location: 0.55)
//        ], startPoint: .top, endPoint: .bottom)
//   
        
        .ignoresSafeArea()
    
//        ZStack{
//            VStack(spacing: 0){
//                Color.red
//                Color.blue
//            }
//           Text("Your content")
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//              
//        }
//        .ignoresSafeArea()
      
        
    }
}
#Preview {
    ContentView()
}
