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
    
//    func testBundles() {
//        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt"){
//            if let fileContents = try? String(contentsOf: fileURL){
//                
//            }
//        }
//    }
    
    func testStrings() {
      let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
        
}

#Preview {
    ContentView()
}
