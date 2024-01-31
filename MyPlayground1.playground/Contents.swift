import UIKit


let firstPart = "Hello,"
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + "gonna" + action

let luggageCode = "1" + "2" + "3" + "4" + "5"


let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."

//hatalı durum burda stringle int birlikte kullanamayız
let number = 11
//let missionMessage = "Apollo" + number + "landed on the moon."

//Swiftten sayıya bir string gibi davranmasını isteyebiliriz
let missionMessage = "Apollo" + String(number) + "landed on the moon."
let missionMessage1 = "Apollo \(number) landed on the moon."

print("5 * 5 is \(5 * 5)")

var city = "Cardiff"
var message1 = "Welcome to \(city)!"


let celcius = 5
print(celcius)
let fanrenheit = Double(celcius) * 9 / 5 + 32
print(fanrenheit)
