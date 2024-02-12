import UIKit

//How to create your own classes

class Game {
    var score = 0 {
        didSet{
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

//How to make one class inherit from another

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day.")
    }
}

//    final: Bir sınıfın alt sınıflarının oluşturulmasını engeller.
final class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
//    override: Bir alt sınıfın üst sınıfta tanımlanmış bir metodun veya özelliğin üzerine yazıldığını belirtmek için kullanılır. Bu, alt sınıfın üst sınıftaki aynı isimli bie metodu veya özelliği değiştireceğini ifade eder.
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times will spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()



//How to add initializers for classes

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible = false
}

let teslaX = Car(isElectric: true)


//How to copy classes

class User{
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Taylor"

print(user1.username)
print(user2.username)



//How to create a deinitializer for a class

class User1 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit{
        print("User \(id): I'm dead!")
    }
}

var users = [User1]()

for i in 1...3 {
    let user = User1(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear")



//How to work with variables inside classes

class User2 {
    var name = "Paul"
}

var user = User2()
user.name = "Taylor"
user = User2()
print(user.name)
