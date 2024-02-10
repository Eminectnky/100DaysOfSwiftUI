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
