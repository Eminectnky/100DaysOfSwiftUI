import UIKit

//How to reuse code with functions

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}
printTimesTables(number: 5, end:20)


//How to return values from functions

func roolDice() -> Int {
    return Int.random(in: 1...6)
}

let result = roolDice()
print(result)

func areLettersIdenticial(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
    
}

func pythagoras(a:Double, b:Double){
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

func sayHello() {
    return
}


//How to return multiple values from functions

//func getUser() -> [String] {
//    ["Taylor", "Swift"]
//}
//
//let user = getUser()
//print("Name: \(user[0]) \(user[1])")

func getUser() -> [String: String] {
    ["firstName": "Taylor", "lastName": "Swift"]
}

let user = getUser()
print("Name: \(user["firstName", default: "?"]) \(user["lastName", default: "?"])")


func getUser1() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let(firstName, lastName) = getUser1()
print("Name: \(firstName)")
print("LastName: \(lastName)")

//How to customize parameter labels

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result1 = isUppercase(string)


func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 3)
