import UIKit

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(beatles[1])
print(numbers[2])
print(temperatures[1])

beatles.append("Adrian")
beatles.append("Allen")
print(beatles[4])
print(beatles[5])

//HATALI KULLANIM
//let firstBeatle = beatles[0]
//let firstNumber = numbers[0]
//let notAllowed = firstBeatle + firstNumber

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])


var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

print(albums[1])

var albums1 = ["Folklore"]
albums1.append("Fearless")
albums1.append("Red")
print(albums1.count)

//remove(at:) dizideki bir öğeyi kaldırmak için kullanılır
//removeAll() dizideki her şeyi kaldırmak için kullanılır

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)


//constains() kullanarak dizinin belirli bir öğe içerip içermediğini kontrol edebiliriz
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

//sorted() diziyi sıralamak için kullanılır
let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())


//reversed() diziyi çağırarak onu tersine çevirir
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")

//Hatalı kullanım
//print("Name: \(employee[0])")
//employee.remove(at: 1)
//print("Job title: \(employee[1])")
//print("Location: \(employee[2])")

let employee2 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]

let employee3 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee3["name"])
print(employee3["job"])
print(employee3["location"])

print(employee3["password"])


print(employee3["name", default: "Unknown"])
print(employee3["job", default: "Unknown"])
print(employee3["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]


let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206


var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"

let results = [
    "english": 100,
    "french": 85,
    "geography": 75
]

let historyResult = results["history", default: 0]


let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)


var people1 = Set<String>()
people1.insert("Denzel Washington")
people1.insert("Tom Cruise")
people1.insert("Nicolas Cage")
people1.insert("Samuel L jackson")


//enums

var selected = "Monday"
selected = "Tuesday"
selected = "January"

//enum Weekday {
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday


