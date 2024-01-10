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
