import Cocoa
import Foundation

// Armazenando dados ordenados em Arrays

let array = "Matrizes"

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Novall")
beatles.append("Vivian")

print(beatles.count)

// Remover item de um Array - Matriz

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)
print(characters)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Brasil"]
print(cities.sorted())
print(cities.reversed())

let swift = "swift"
print(swift.sorted())

// Armazenaer e encontrar dados Dicionários

let employee = ["name": "Gabriel", "job": "Biotecnologista", "location": "Brasil"]

print(employee["name"])
print(employee["job"])
print(employee["location"])

print(employee["name", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(hasGraduated["Maeve"])
print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

print(heights["Yao Ming"])

