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
