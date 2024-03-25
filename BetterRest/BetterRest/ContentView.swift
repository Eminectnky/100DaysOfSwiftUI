//
//  ContentView.swift
//  BetterRest
//
//  Created by Emine CETINKAYA on 25.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
//        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
//        DatePicker("", selection: $wakeUp, in: Date.now...)
//            .labelsHidden()
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
    
    func exampleDates(){
        
        let components = Calendar.current.dateComponents([.hour,  .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}
#Preview {
    ContentView()
}
