import UIKit

let score = 85

if score > 80 {
    print("Great job!")
}


let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}


let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

//Make an array of 3 numbers
var numbers = [1, 2, 3]

//Add a 4th
numbers.append(4)

//If we have over 3 items
if numbers.count > 3 {
//    Remove the oldest number
    numbers.remove(at: 0)
}

//Display the result
print(numbers)


//== eşittir
//!= eşit değildir
let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}


//Create the username variable
var username = "taylorswift13"

//If 'username' constains an empty string
if username == "" {
//    Make it equal to "Anonymous"
    username = "Anonymous"
}

//Now print a welcome message
print("Welcome, \(username)!")


if username.count == 0 {
    username = "Anonymous"
}

if username.isEmpty == true {
    username = "Anonymous"
}

if username.isEmpty {
    username = "Anonymous"
}

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)


//How to check multiple conditions

let age1 = 16
if age1 >= 18 {
    print("You can vote in the next election.")
}

if age1 < 18 {
    print("Sorry, you're too young to vote.")
}

let age2 = 16
if age2 >= 18 {
    print("You can vote in the next election.")
}else{
    print("Sorry, you're too young to vote.")
}

let temp = 25

//if temp > 20 {
//    if temp < 30 {
//        print("It's a nice day.")
//    }
//}

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent == true {
    print("You can buy the game!")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.escooter

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
}else if transport == .bicycle {
    print("I hope there's a bike path..")
}else if transport == .car {
    print("Time to get stuck in traffic.")
}else {
    print("I'm going to hire a scooter now!")
}


let score1 = 9001

//if score1 > 9000 {
//    print("It's over 9000!")
//}
//
//if score1 <= 9000{
//    print("It's not over 9000!")
//}

//if score1 > 9000{
//    print("It's over 9000!")
//} else {
//    print("It's not over 9000!")
//}

//if score1 > 9000 {
//    print("It's over 9000!")
//}else {
//    if score == 9000 {
//        print("It's exactly 9000!")
//    }else {
//        print("It's not over 9000!")
//    }
//}

if score > 9000 {
    print("It's over 9000!")
}else if score == 9000 {
    print("It's exactly 9000!")
}else {
    print("It's not over 9000!")
}
