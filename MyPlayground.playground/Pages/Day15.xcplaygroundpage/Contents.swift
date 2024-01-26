import Cocoa
import Foundation

//* Revisão Rápida

// Variáveis e Constantes

var name = "Ted"
name = "Rebecca"

let user = "Daphne"

print(name)
print(user)
print()

// Cordas

let actor = "Tom Cruise"

let actor2 = "Tom Cruise 🏃‍♂️"

let quote = "He tapped a sing saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple enginner
"""

print(actor.count)
print(quote.hasPrefix("He"))
print(quote.hasPrefix("Away."))
print()

// Inteiros

let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1000)
print()

// Decimais

let score2 = 3.0
print()

// Booleanos

let goodDogs = true
let gameOver = false

var isSaved = false
isSaved.toggle()
print()

// Unindo cordar

let name2 = "Taylor"
let age = 26
let message = "I'm \(name2) and I'm \(age) years old."
print(message)

// Matrizes

var colors = ["Red", "Green", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]

print(colors[0])
print(readings[2])

colors.append("Tartan")

colors.remove(at: 0)
print(colors.count)
print(colors.contains("Octarine"))

// Dicinários

let employee = [
    "name": "Taylor",
    "job": "Singer"
]

print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])

// Conjuntos

var numberss = Set([1, 1, 3, 5, 7])
print(numberss)

numberss.insert(10)

// Enums

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday

// Digite anotações

var score3: Double = 0

let player: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: Array<String> = ["Red", "Fearless"]
var user3: Dictionary<String, String> = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

var albumss: [String] = ["Red", "Fearless"]
var user4: [String: String] = ["id": "@twostraws"]
var teams: [String] = [String]()
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light

// Condições

let age2 = 16

if age2 < 12 {
    print("You can't vote")
} else if age2 < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}

let temp = 26

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

if temp > 20 || temp < 26 {
    print("Este é um dia incerto")
}

// Declarações de mudança
