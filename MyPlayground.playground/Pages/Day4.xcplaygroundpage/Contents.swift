import Cocoa
import Foundation

// Anotações de tipo

let playerName: String = "Roy"

var luckyNumber: Int = 13

let pi: Double = 3.1415

var isAuthenticated: Bool = true

var albums: [String] = ["Red", "Fearless"]

var user: [String: String] = ["id": "@twostraws"]

var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

// Exemplo que precisamos dizer o tipo para Swift

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"] // Esse exemplo swift sabe que é uma matriz de string.

var teams: [String] = [String]() // Aqui uma matriz/array vazia é necessário informar o tipo.

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

let username: String // lost of complex logic

username = "@twostraws" // lots more complex logic

print(username)

// Checkpoint 2 | Ponto de Verificação

let cores: [String] = ["Amarelo", "Vermelho", "Azul", "Rosa", "Roxo", "Laranja"]

print(cores.count)


