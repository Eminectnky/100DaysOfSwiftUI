import UIKit

//How to create and use protocols

protocol Vehicle{
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

protocol CanBeElectric {
    
}

struct Car: Vehicle, CanBeElectric {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I am driving \(distance) km ")
    }
    
    func openSunroof(){
        print("It is a nice day!")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I am cycling \(distance) km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    }else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int){
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)



//How to use opaque return types

protocol View { }

func getRandomNumber() -> some Equatable {
    Double.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())


//How to create and use extensions

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
quote.trim()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""
print(lyrics.lines.count)

struct Book {
    let title: String
    let pagecount: Int
    let readingHours: Int

   
}

extension Book {
   
    
    init(title: String, pagecount: Int) {
        self.title = title
        self.pagecount = pagecount
        self.readingHours = pagecount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pagecount: 1178, readingHours: 24)



//How to create and use protocol extensions

extension Collection {
     var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()


//How to get the most from protocol extensions

extension Numeric {
    func squared() -> Self {
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())

struct User: Comparable {
    let name: String
    
   static func <(lhs: User, rhs: User) -> Bool {
        lhs.name < rhs.name
    }
    
}

let user1 = User(name: "Link")
let user2 = User(name: "Zelda")
print(user1 == user2)
print(user1 != user2)
print(user1 < user2)
print(user1 <= user2)
print(user1 > user2)
print(user1 >= user2)


//checkpoint8

protocol Building {
    var numberOfRooms: Int { get }
    var cost: Int { get }
    var realtorName: String { get }
    
    func salesSummary()
}

struct House: Building {
    let numberOfRooms: Int
    let cost: Int
    let realtorName: String
    
    func salesSummary() {
        print("Bu ev \(numberOfRooms) odalıdır ve maliyeti \(cost) dolardır.")
    }
}

struct Office: Building {
    let numberOfRooms: Int
    let cost: Int
    let realtorName: String
    
    func salesSummary() {
        print("Bu ofis \(numberOfRooms) odalıdır ve maliyeti \(cost) dolardır. Satışı \(realtorName) tarafından gerçekleştirilmektedir.")
    }
}

let house = House(numberOfRooms: 4, cost: 500000, realtorName: "John Doe")
house.salesSummary()

let office = Office(numberOfRooms: 10, cost: 1000000, realtorName: "Jane Smith")
office.salesSummary()
