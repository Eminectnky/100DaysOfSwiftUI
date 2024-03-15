//
//  SplashScreen.swift
//  GuessTheFlag
//
//  Created by Emine CETINKAYA on 13.03.2024.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive = false
    @State private var size  = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive {
            ContentView()
        }else{
            VStack{
                VStack{
                    Spacer()
                    Image("flags")
                        .resizable()
                        .frame(width: 100, height: 100)
                        
                    Text("Guess The Flag")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                    Spacer()
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
            
        }
    }
}
#Preview {
  SplashScreen()
        }
    
