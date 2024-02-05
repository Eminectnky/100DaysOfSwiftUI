import UIKit

//How to provide default values for parameters
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)


var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)


//How to handle errors in functions
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short}
    if password == "12345" {throw PasswordError.obvious}
    
    if password.count < 8 {
        return "OK"
    }else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


//do {
//    try someRiskyWork()
//} catch {
//    print("Handle errors here ")
//}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
//} catch PasswordError.short{
//    print("Please use a longer password")
//} catch PasswordError.obvious {
//    print("I have the same combination on my language!")
} catch {
    print("There was an error: \(error.localizedDescription)")
}


//Checkpoint: 4

func karekokBul(_ sayi: Int) -> String {
    if sayi < 1 || sayi > 10000 {
        return "sınır dışı"
    }
    
    for i in 1...sayi {
        if i * i == sayi {
            return "\(sayi)'in karekökü \(i)' tir"
        }
    }
    
    return "kök yok"
}

//test etmek için örnek

let sonuc1 = karekokBul(25)
print(sonuc1)


let sonuc2 = karekokBul(9)
print(sonuc2)


let sonuc3 = karekokBul(144)
print(sonuc3)


let sonuc4 = karekokBul(9999)
print(sonuc4)

let sonuc5 = karekokBul(10001)
print(sonuc5)
