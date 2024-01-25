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
