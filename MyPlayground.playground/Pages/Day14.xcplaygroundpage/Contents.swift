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

var bestScore: Int? = nil
bestScore = 101

if bestScore > 100 { // Não da para comprar bestScore com um numero assim. Precisaria colocar let por ter uma opicional e fazer um if depois com a comparação, dentro do "desembulhar".
    print("You got a high score!")
} else {
    print("Better luck next time.")
}

print()

//* 02 Desembrulhando opticonals com guarda
