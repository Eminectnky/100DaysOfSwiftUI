//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Emine CETINKAYA on 23.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert){
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this.")
        }
//        Button{
//            print("Button was tapped")
//        } label: {
//            Label("Edit", systemImage: "pencil")
//                .padding()
//                .foregroundStyle(.white)
//                .background(.red)
//        }
//        Image(systemName: "pencil.circle")
//            .foregroundStyle(.red)
//            .font(.largeTitle)
        
//        Button{
//            print("Button was tapped")
//        } label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundStyle(.white)
//                .background(.red)
//    }
//        VStack{
//            Button("Button 1") { }
//                .buttonStyle(.bordered)
//            Button("Button 2", role: .destructive) { }
//                .buttonStyle(.bordered)
//            Button("Button 3") { }
//                .buttonStyle(.borderedProminent)
//                .tint(.indigo)
//            Button("Button 4", role: .destructive) { }
//                .buttonStyle(.borderedProminent)
//        }
//        Button("Delete selection", role: .destructive, action: executeDelete)
        
        
//        Text("Your content")
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .foregroundStyle(.white)
//            .background(.indigo.gradient)
//
//        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
//
//        RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
 
            
//        LinearGradient(stops: [
//            .init(color: .white, location: 0.45),
//            .init(color: .black, location: 0.55)
//        ], startPoint: .top, endPoint: .bottom)
//   
        
//        .ignoresSafeArea()
    
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
    func executeDelete() {
        print("Now deleting...")
    }
}
#Preview {
    ContentView()
}
