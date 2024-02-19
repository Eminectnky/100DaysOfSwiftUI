//
//  ContentView.swift
//  WeSplitApp
//
//  Created by Emine CETINKAYA on 19.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    var body: some View {
        Form{
            Section{
                TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
            }
            
            Section{
                Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

#Preview {
    ContentView()
}
