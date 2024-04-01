//
//  ContentView.swift
//  WordScramble
//
//  Created by Emine CETINKAYA on 30.03.2024.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List{
            Text("Static Row")
            
            ForEach(people, id: \.self){
                Text($0)
            }
            Text("Static Row")
        }
    }
        
}

#Preview {
    ContentView()
}