//
//  ContentView.swift
//  WeSplit
//
//  Created by Emine CETINKAYA on 18.02.2024.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Ron"
//    @State private var name = "Emine"
    
//   @State var topCount = 0
    
    var body: some View {
        NavigationStack{
            Form{
                Picker("Select your student", selection: $selectedStudent){
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                }
            
            }
        }
//        Form{
//            TextField("Enter your name", text: $name)
//            Text("Your name is \(name)")
//        }
//
//        Button("Tap Count: \(topCount)"){
//            self.topCount += 1
//        }
        //        NavigationStack{
        //            Form {
        //                Section{
        //                    Text("Hello, world!")
        //                }
        //                Section{
        //                    Text("Hello, world!")
        //                    Text("Hello, world!")
        //                }
        //                Section{
        //                    Text("Hello, world!")
        //                    Text("Hello, world!")
        //                    Text("Hello, world!")
        //                }
        //
        //                Text("Hello, world!")
        //                Text("Hello, world!")
        //                Text("Hello, world!")
        //                Text("Hello, world!")
        //            }
        //            .navigationTitle("SwiftUI")
        ////            .navigationBarTitleDisplayMode(.inline)
        //        }
        //    }
    }
}
    #Preview {
        ContentView()
    }

