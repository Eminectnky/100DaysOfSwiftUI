//
//  ContentView.swift
//  WordScramble
//
//  Created by Emine CETINKAYA on 30.03.2024.
//

import SwiftUI

struct ContentView: View {
  
    
    @State private var useWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    var body: some View {
        
        NavigationStack{
            List{
                Section{
                    TextField("Enter your word", text: $newWord)
                        .textInputAutocapitalization(.never)
                }
                
                Section {
                    ForEach(useWords, id: \.self) { word in
                        HStack{
                            Image(systemName: "\(word.count).circle")
                                .foregroundColor(.purple)
                            Text(word)
                        }
                    }
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
            .onAppear(perform: startGame)
        }
    }
        func addNewWord() {
            let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
            
            guard answer.count > 0 else { return }
            
//            extra validation to come
            withAnimation {
                useWords.insert(answer, at: 0)
            }
            newWord = ""
        }
    
    func startGame() {
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL){
                let allWords = startWords.components(separatedBy: "\n")
                rootWord = allWords.randomElement() ?? "silkworm"
                return
            }
        }
        fatalError("Could not load start.txt from bundle.")
    }
}

#Preview {
    ContentView()
}
