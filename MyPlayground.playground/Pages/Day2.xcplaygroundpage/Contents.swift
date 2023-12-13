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
