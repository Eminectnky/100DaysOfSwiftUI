//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Emine CETINKAYA on 23.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US", "Monaco" ].shuffled() //.shuffled() ile diziyi karıştırırız.
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0 //Kullanıcının puanını saklar
    @State private var correctCountry = ""
    @State private var gameOver = false
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ],center: .top, startRadius: 200, endRadius: 700)
            
            VStack{
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                
                VStack(spacing: 15){
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        }label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)") //Puanı görüntülemek için
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .ignoresSafeArea()
        
        .alert(isPresented: $showingScore) {
            if gameOver {
                return Alert(title: Text("Game Over"), message: Text("Your final score is \(score). Would you like to play again?"), primaryButton: .default(Text("Play Again")) {
                    reset()
                }, secondaryButton: .cancel())
            } else {
                return Alert(title: Text(scoreTitle), message: scoreTitle == "Wrong" ? Text("Wrong! This is \(correctCountry)'s flag") : Text("Your score is \(score)"), dismissButton: .default(Text("Continue")) {
                    askQuestion()
                })
            }
        }
    }
    
    func reset() {
        score = 0
        gameOver = false
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1 //Doğru cevap aldığında puanı arttır
        } else {
            scoreTitle = "Wrong"
            correctCountry = countries[number] //Yanlış bayrak seçildiğinde doğru ülkenin adını al
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        if score == 7 {
            gameOver = true
        } else {
            countries.shuffle()
            correctAnswer = Int.random(in: 0...2)
        }
    }
}

    #Preview {
        ContentView()
    }

