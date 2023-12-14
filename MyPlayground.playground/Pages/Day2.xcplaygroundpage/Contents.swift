import Foundation
import Cocoa

// Trabalhando com Booleanos

let goodDog = true
let gameOver = false

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false

isAuthenticated = !isAuthenticated // Aqui eu transformei ele em verdadeiro com o operador especial (!).
print(isAuthenticated)

isAuthenticated = !isAuthenticated // Aqui eu voltei ele a false com o operador especial (!).
print(isAuthenticated)

var gameOverTwo = false
print(gameOverTwo)

gameOverTwo.toggle()
print(gameOverTwo)

// Unindo String

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

print(greeting)

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action

print(lyric)

let name = "Gabriel"
let age = 30
let message = "Olá, meu nome é \(name) e tenho \(age) anos."

print(message)

// da para colocar cálculos dentor das interpolações.

print("5 x 5 é \(5 * 5)")

// Checkpoint - Ponto de Verificação 1
// Converter temperatures de Celsius para Fahrenheit

let celsius = 30.0
var convert = (celsius * 9) / 5 + 32

print("A temperatura em Fahrenheit é", convert,"°C")
