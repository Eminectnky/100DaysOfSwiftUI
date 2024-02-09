import UIKit

//How to limit access to internal data using access control

struct BankAccount {
    var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

account.funds -= 1000

private var funds = 0



//Static properties and methods

struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}


struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}


//static belirleyicisi, bir türe ait olan özellikleri ve metodları tanımlamak ve bu özelliklere ve metodlara tür adı kullanılarak doğrudan erişim sağlamak için kullanılır.



//checkpoint6

class Araba {
    private var model: String
    private var koltukSayisi: Int
    private var vites: Int
    
    init(model: String, koltukSayisi: Int, vites: Int) {
        self.model = model
        self.koltukSayisi = koltukSayisi
        if vites >= 0 && vites <= 10 {
            self.vites = vites
        } else {
            self.vites = 0 //vites varsayılan olarak sıfır
        }
    }
    
    func vitesYukariDegistir(){
        if vites < 10 {
            vites += 1
        }
    }
    
    
    func vitesAsagiDegistir() {
        if vites > 0 {
            vites -= 1
        }
    }
    
    
    func vitesGoster() -> Int {
        return vites
    }
}


//araba örneği
var araba = Araba(model: "BMW", koltukSayisi: 5, vites: 0)

//vites yukarı
araba.vitesYukariDegistir()
print("Yeni vites: \(araba.vitesGoster())") //çıktı: Yeni vites: 1

//vites tekrar yukarı
araba.vitesYukariDegistir()
print("Yeni vites: \(araba.vitesGoster())") //çıktı: Yeni vites: 2

//vites aşağı
araba.vitesAsagiDegistir()
print("Yeni vites: \(araba.vitesGoster())") //çıktı: Yeni vites: 1
