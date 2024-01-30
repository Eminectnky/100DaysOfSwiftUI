import UIKit

var greeting = "Hello, playground"


var name = "Ted"
name = "Rebecca"
name = "Keeley"


let character = "Daphne"


var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)


let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"

let actor = "Denzel Washington"

let fileName = "paris.jpg"
let result = "⭐️ You win! ⭐️"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."


//çok satırlı dize kullanmak için
let movie = """
A day in
the life of an
Apple engineer
"""

//dizenin uzunluğunu okumak için
print(fileName.count)


let nameLength = actor.count
print(nameLength)

//bütün harfleri büyütür
print(result.uppercased())

//dizenin bizim seçtiğimiz harfle başlayıp başlamadığını bize bildirir
print(movie.hasPrefix("A day"))

//dizenin metinle bitip bitmediğini kontrol eder(dizeler büyük/küçük harfe duyarlıdır)
print(fileName.hasSuffix(".jpg"))


var quote1 = "Change the world by being yourself"

var burns = """
The best laid schemes
O' mice and men
Gang aft agley
"""

let reallyBig = 100000000

//Bu sayıyı 100.000.000 şeklinde bölmek yerine bunu swiftte alt çizgi (_) kullanarak yapabiliriz

let reallyBig1 = 100_000_000

//aslında swift alt çizgileri umursamıyor
let reallyBig2 = 1_00_00_00_00

let score = 5
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)


var counter = 10
//counter = counter + 5
counter += 5

counter *= 2
counter -= 10
counter /= 2


//bir tam sayının başka bir tam sayının katı olup olmadığını öğrenmek için kullanırız
// 120 nin 3 ün katı olup olmadığını şu şekilde sorabiliriz
let number = 120
print(number.isMultiple(of: 3))

print(120.isMultiple(of: 3))


let number1 = 0.1 + 0.2
print(number1)

let a = 1
let b = 2.0
//let c = a + Int(b)
let c = Double(a) + b

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var name1 = "Nicolas Cage"
name1 = "John Travolta"

var rating = 5.0
rating *= 2

//değişken yaratıp türünü değiştiremeyiz hata verir
//var meaningOfLife1 = 42
//meaningOfLife1 = "Forty two"

