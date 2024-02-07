import UIKit

//How to create your own structs

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)


red.printSummary()
wings.printSummary()



struct Employee {
    let name: String
    var vacationRemaining: Int = 14
    
    mutating func takeVacation(days: Int) {
        //mutating: bir yapı içindeki bir yöntemin yapı içindeki özellikleri değiştirebileceğini gösterir. Burada mutating, bir çalışan izin aldığında, çalışanın kalan izin günlerini azaltır.
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        }else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee.init(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)


let a = 1
let b = 2.0
let c = Double(a) + b


let kane = Employee(name: "Lana Kane")
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 34)



//How to compute property values dynamically

struct Employee1 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set{
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer1 = Employee1(name: "Sterling Archer", vacationAllocated: 14)
archer1.vacationTaken += 4
archer1.vacationRemaining = 5
print(archer1.vacationAllocated)


//How to take action when a property changes

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1



struct App {
    
    var contacts = [String]() {
        willSet {
//            willSet özellik değeri değişmeden önce çalışır.
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
//            didSet özelliğin değeri değiştiğinde otomatik olarak çalışır ve eski değeri kullanarak  belirli bir eylemi gerçekleştirir.
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")




//How to create custom initializers

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)
