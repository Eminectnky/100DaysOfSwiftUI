import UIKit

//How to create and use closures

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHello1 = { (name: String) -> String in
    "Hi \(name)!"
}

//var greetCopy: () -> Void = greetUser

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

//sayHello("Taylor")


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)


let sayHello2 = {
    print("Hi there!")
}

sayHello2()


let captainFirstTeam1 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

//example

struct Student {
    let name: String
    let testScore: Int
}

let students = [Student(name: "Luke", testScore: 88),
                Student(name: "Han", testScore: 73),
                Student(name: "Leia", testScore: 95),
                Student(name: "Chewy", testScore: 78),
                Student(name: "Obi-Wan", testScore: 65),
                Student(name: "Ahsoka", testScore: 86),
                Student(name: "Yoda", testScore: 68)]

var topStudentFilter: (Student) ->  Bool = { student in
    return student.testScore > 80
    
}

func topStudentFilterF(student: Student) -> Bool {
    return student.testScore > 70
}

let topStudents = students.filter { $0.testScore > 80 }
let studentRanking = topStudents.sorted {
    return $0.testScore > $1.testScore
}

for topStudent in topStudents {
    print(topStudent.name)
}

//How to use trailing closures and shorthand syntax

let team1 = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam2 = team1.sorted {
    if $0 == "Suzanne" {
        return true
    }else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}

let reverseTeam = team.sorted { $0 > $1 }

let tOnly = team1.filter{ $0.hasPrefix("T")}
print(tOnly)

let uppercaseTeam = team1.map{$0.uppercased()}
print(uppercaseTeam)

//How to accept functions as parameters

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls =  makeArray(size: 50) {
    Int.random(in: 1...20)
}
print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}

doImportantWork {
    print("This id the first work")
}second: {
    print("This is the second work")
}third: {
    print("This is the third work")
}

// Checkpoint 5

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumbers.filter{ $0 % 2 == 0 } //Çift sayıları filtreler
    .sorted() //Artan düzende sıralar
    .map{"\($0) is a lucky number"} //Dizeleri oluşturur
    .forEach{ print($0) } // Her bir dizeyi yazdır


//example 2

let luckyNumbers1 = [5, 34, 56, 67,38,23,44,52]
luckyNumbers1.filter{ $0 % 2 == 0 }
    .sorted()
    .map { "\($0) are even numbers "}
    .forEach{ print($0)}

