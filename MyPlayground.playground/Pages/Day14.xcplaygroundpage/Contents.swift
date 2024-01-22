import Cocoa
import Foundation

//* 01 Optionals

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

// Esse if let de cima pode ficar assim:
//if let number {
//    print(square(number: number)")
//}

print()

func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}

//* Exercícios optionals

var favoriteMovie: String? = nil
favoriteMovie = "The Life of Brian"

if let movie = favoriteMovie {
    print("You favorite movie is \(movie).")
} else {
    print("You don't have a favorite movie.")
}

print()

var weatherForecast: String = "sunny" // Não é opcional

//if let forecast = weatherForecast { // Por weatherForecast não ser opcional if let aqui não funciona.
//    print("The forecast is \(forecast).")
//} else {
//    print("No forecast available.")
//}

print()

let song: String? = "Shake it Off"

if let unwrappedSong = song {
    print("The name has \(unwrappedSong.count) letters.")
}

print()

let currentDestination: String? = nil
if let destination = currentDestination {
    print("We're walking to \(destination).")
} else {
    print("We're just wandering.")
}

print()

//let tableHeight: Double? = 100

//if tableHeight > 85.0 {
//    print("The table is too high.")
//}

print()

let menuItems: [String]? = ["Pizza", "Pasta"]

//if let items = menuItems {
//    print("There are \(menuItems.count) items to choose from.") // Não está correto porque aqui estou puxando menuItems, mas deveria ser items
//}

print()

//var score: Int = nil // Não tem como colocar nil dentro de um não opcional
//score = 556
//
//if let playerScore = score {
//    print("You scored \(playerScore) points.")
//}

let album = "Red"
let albums = ["Reputation", "Red", "1989"]

if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position)")
}

print()

let userAge: Int? = 38

if let age = userAge {
    print("You are \(age) years old.")
}

print()

//let favoriteTennisPlayer: String? = "Andy Murray"
//
//if player { // Não estou usando if let aqui, e tenho um opcional na contatne que chamo.
//    print("Let's watch \(player)'s hightlights video on Youtube.")
//}

print()

var winner: String? = nil
winner = "Daley Thompson"

if let name = winner {
    print("And the winner is... \(name)!")
}

print()

//var bestScore: Int? = nil
//bestScore = 101
//
//if bestScore > 100 { // Não da para comprar bestScore com um numero assim. Precisaria colocar let por ter uma opicional e fazer um if depois com a comparação, dentro do "desembulhar".
//    print("You got a high score!")
//} else {
//    print("Better luck next time.")
//}

print()

//* 02 Desembrulhando opticonals com guarda

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

//var myVar: Int? = 3
//
//if let unwrapped = myVar {
//    print("Run if myVar has a value inside")
//}
//
//guard let unwrapped = myVar else {
//    print("Run if myVar doesn't have a value insude")
//    return
//}
//
//guard some Array.isEmpty else {
//    return
//}

func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife() {
    guard let name = getMeaningOfLife() else {
        return
    }
    
    print(name)
}

printMeaningOfLife()

print()

//* Exercícios desembrulhando guards

func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}

let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}

print()

func playOpera(by composer: String?) -> String? {
    guard let composer = composer else {
        return "Please specify a composer."
    }
    if composer == "Mozart" {
        return "Le nozze di Figaro"
    } else {
        return nil
    }
}
if let opera = playOpera(by: "Mozart") {
    print(opera)
}

print()

func playScale(name: String?) {
    guard let name = name else {
        return
    }
    print("Playing the \(name) scale.")
}

playScale(name: "C")

print()

func uppercase(string: String?) -> String? {
    guard let string = string else {
        return nil
    }
    return string.uppercased()
}

if let result = uppercase(string: "Hello") {
    print(result)
}

print()

func isLongEnough(_ string: String?) -> Bool {
    guard let string = string else { return false }
    if string.count >= 8 {
        return true
    } else {
        return false
    }
}
if isLongEnough("Mario Odyssey") {
    print("Let's play that!")
}

print()

func add3(to number: Int?) -> Int? {
    guard let number = number else {
        return 3
    }
    return number + 3
}

if let added = add3(to: 5) {
    print(added)
}

print()

func validate(password: String?) -> Bool {
    guard let passwrod = password else {
        return false
    }
    if password == "fr0sties" {
        print("Authenticated successfully!")
        return true
    }
    return false
}

validate(password: "fr0sties")

print()

func test(number: Int?) {
    guard let number = number else { return }
    print("Number is \(number)")
}

test(number: 42)

print()

func describe(occupation: String?) {
    guard let occupation = occupation else {
        print("You don't have a job.")
        return
    }
    print("You are an \(occupation).")
}

let job = "engineer"
describe(occupation: job)

print()

func plantTree(_ type: String?) {
    guard let type else {
        return
    }
    print("Planting a \(type).")
}
plantTree("willow")

//* 03 Optionals com coalescência nula

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"
// let new = captains["Serenity", default: "N/A"]

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"

print(author)

let input2 = ""
let number2 = Int(input) ?? 0
print(number2)

//let savedData = loadSavedMessage() ?? ""
//let savedData2 = first() ?? second() ?? "" // Entender porque está dando errado, quando é valido.

let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
let crusherScore = scores["Crusher"] ?? 0

let crusherScore2 = scores["Crusher", default: 0]

// Exercicios de Optionals com coalescência nula

var captain: String? = "Kathryn Janeway"
let name = captain ?? "Anonymous"

print()

let planetNumber: Int? = 426
var destination = planetNumber ?? 3

print()

//let userID: Int? = 556
//let id = userID ?? "Unknown"

// Isso não é possível porque estou usando Tipos diferentes (Int e String)

print()

let distanceRan: Double? = 0.5
let distance: Double = distanceRan ?? 0

print()

var userOptedIn: Bool? = nil
var optedIn = userOptedIn ?? false

print()

var selectedYear: Int? = nil
let actualYear = selectedYear ?? 1989

//* 04 Varias Options usando encadeamento
