import Cocoa
import Foundation

// 01 Protocolos

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
    
    let name = "Car"
    var currentPassengers = 1
}

struct Bicyble: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
    
    let name = "Bicycle"
    var currentPassengers = 1
}

let bike = Bicyble()
commute(distance: 50, using: bike)

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

getTravelEstimates(using: [car, bike], distance: 150)

protocol Purchaseable {
    var name: String { get set }
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car2: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

//* Exercícios 01

protocol Purchaseable2 {
    var price: Double { get set }
    var currency: String { get set }
}

//* 02 Types return opaque

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

//* 03 Extensões

var quote = "  The truth is rarely pure pure and never simples   "

let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
    
}

let trimmed2 = quote.trimmed()

func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}

let trimmed3 = trim(quote)

quote.trim()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""


print(lyrics.lines.count)

print()
print()

struct Book2 {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book2 {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book2(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

print(lotr)

//* Exercícios Extensões

extension Double {
    var isNegative: Bool {
        return self < 0
    }
}

extension String {
    var isLong: Bool {
        return count > 25
    }
}

extension String {
    func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) { return self }
        return "\(prefix)\(self)"
    }
}

extension String {
    func isUppercased() -> Bool {
        return self == self.uppercased()
    }
}

//* 04 Extensões usando em Protocolo

let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }

let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }

//* Exercícios 04 Protocols e Extensions

protocol Anime {
    var availableLanguages: [String] { get set }
    func watch(in language: String)
}

extension Anime {
    func watch(in language: String) {
        if availableLanguages.contains(language) {
            print("Now playing in \(language)")
        } else {
            print("Unrecognized language.")
        }
    }
}

//* CheckPoint 8 - Ponto de Verificação 8

protocol Construcao {
    var quartos: Int { get } // Por que isso é uma var, se você especificar só poderá GET esse valor? Deveria ser um let?
    var custo: Int { get }
    var vendedor: String { get }
    func resumoVendas()
}

struct Casa: Construcao {
    var quartos: Int
    var custo: Int
    var vendedor: String
    
    func resumoVendas() {
        print("Aqui temos uma linda casa com \(quartos) quartos. O preço será \(custo) Dolares e seu vendedor é \(vendedor)")
    }
}

extension Casa {
    init(quartos: Int, vendedor: String) {
        self.quartos = quartos
        self.custo = quartos * 50_000
        self.vendedor = vendedor
    }
}

struct Escritorio: Construcao {
    var quartos: Int { // O número de quartos é calculado com base no número de assentos no prédio de escritórios.
        assentos / 2 // Apenas exemplo. Cada escritório contém 2 assentos.
    }
    
    var assentos: Int // Adicionou esta variável para reportar o número de assetnos no prédio de escritórios
    var custo: Int
    var vendedor: String
    
    func resumoVendas() {
        print("Aqui temos um lindo prédio com \(assentos) assentos em \(quartos) escritórios.")
    }
}

let casa = Casa(quartos: 6, custo: 150_000, vendedor: "Maxi")
casa.resumoVendas()

let escritorio = Escritorio(assentos: 2, custo: 50_000, vendedor: "Maxi")
escritorio.resumoVendas()

let extCasa = Casa(quartos: 5, vendedor: "Maxi")
extCasa.resumoVendas()

//* Essa resolução precisei olhar na internet e copiar ela por inteiro. Deu para perceber que deixei passar muito entendimento do que precisava fazer com Protocols e Extensions. 
