import UIKit

//Type annotations and checkpoint

//let surname = "Lasso"
//var score = 0

let surname: String = "Lasso"
var score: Int = 0

var score1: Double = 1


//String metni tutar
let playerName: String = "Roy"

//Int tam sayıları tutar
var luckyNumber: Int = 13

//double ondalık sayıları tutar
let pi: Double = 3.141

//Bool true ya da false tutar
var isAuthenticated: Bool = true

//Array
var albums: [String] = ["Red", "Fearless"]

//Dictionary
var user: [String: String] = ["id": "@twostraws"]

//Set
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]

var teams: [String] = [String]()


var cities: [String] = []

var clues = [String]()


//enum
enum UIStyle {
    case light, dark, system
}
var style = UIStyle.light
style = .dark
style = .system

let username: String
username = "@twostraws"
print(username)

let fruits = ["Apple", "Orange", "Banana", "Strawberry"]
fruits.count

