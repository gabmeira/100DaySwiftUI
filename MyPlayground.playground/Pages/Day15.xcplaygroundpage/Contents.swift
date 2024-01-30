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

enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella.")
default:
    print("Should be okay.")
}

// Operador conticional ternário

let age3 = 18
let canVote = age3 >= 18 ? "Yes" : "No"

// Rotação loops

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1..<13 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var count = 10

while count > 0 {
    print("\(count)...")
    count -= 1
}

print("Go!")

let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(file)")
}

// Funções

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func rollDice2() -> Int {
    Int.random(in: 1...6) // Neste exemplo diferente do superior, ele não usar return. Mas essa contição só funcina em função com uma linha.
}

// Returnando vários valores de funções

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user5 = getUser()
print("Name: \(user5.firstName) \(user5.lastName)")

let (firstName, _) = getUser()
print("Name: \(firstName)")

// Personalizando rótulos de parâmetros

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result2 = isUppercase(string)

func printTimesTables2(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables2(for: 5)

print()

// Fornecendo valores padrão para parâmetros

func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)!")
    } else {
        print("Hi, \(person)!")
    }
}

greet("Tim", formal: true)
greet("Taylor")

print()

// Tratamento de erros em funções

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

let string2 = "12345"

do {
    let result = try checkPassword(string)
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my lyggage!")
} catch {
    print("There was an error.")
}

// Fechamentos

let sayHellos = { (name: String) -> String in
    "Hi \(name)!"
}

sayHellos("Gabriel")

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})

print(onlyT)

// Fechamento finais e sintaxe abreviada


