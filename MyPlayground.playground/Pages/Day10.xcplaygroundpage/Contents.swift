import Cocoa
import Foundation

// Structs, part one

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

print()

struct Employee {
    let name: String
    var vacationRemaining = 14
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Day remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

print()

let kane = Employee(name: "Lana Kane")
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)

print("\(kane) e \(poovey)")

//* IMPORTANTE LEMBRAR

//* Exploraremos as estruturas em detalhes nos próximos capítulos, mas primeiro quero dar alguns nomes às coisas.

//* Variáveis ​​e constantes que pertencem a structs são chamadas de propriedades.

//* Funções que pertencem a structs são chamadas de métodos.

//* Quando criamos uma constante ou variável a partir de uma estrutura, chamamos isso de instância – você pode criar uma dúzia de instâncias exclusivas da Albumestrutura, por exemplo.

//* Quando criamos instâncias de structs, fazemos isso usando um inicializador como este: Album(title: "Wings", artist: "BTS", year: 2016).

struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer2 = Employee2(name: "Sterling Archer", vacationAllocated: 14)
archer2.vacationTaken += 4
archer2.vacationRemaining = 5
print(archer2.vacationAllocated)

print()
print()

struct Game {
    var score = 0
}

var game = Game()
game.score += 10
print("Score is now \(game.score)")
game.score -= 3
print("Score is now \(game.score)")
game.score += 1

print()
print()

struct Game2 {
    var score2 = 0 {
        didSet {
            print("Score is now \(score2)")
        }
    }
}

var game2 = Game2()
game2.score2 += 10
game2.score2 -= 3
game2.score2 += 1

print()
print()

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

print()
print()

struct Child {
    var name: String
    var age: Int {
        didSet {
            print("Happy birthday, \(name)!") // Não consegui entender proque está valido se o print não é um Inteiro. No exercício o código é valido, mas ainda estou pensando que não é.
        }
    }
}

var crianca = Child(name: "Gabriel", age: 30)
print(crianca.age)

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
