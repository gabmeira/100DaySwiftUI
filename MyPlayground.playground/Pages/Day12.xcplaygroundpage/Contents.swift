import Cocoa
import Foundation

// 01 Class

//* Como mencionado anteriormente o SwiftUI usa structs extensivamente para seu design de UI. E Class ele usa extensivamente para seus dados. Quando você mostra dados de algum objeto na tela, ou quando você passa dados entre seus layouts, você normalmente estará usando classes.

class Game { //* Se substituir class por struct o código funciona, porém se torna uma struct
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

print()
print()

//* 02 Herdar ou Herança

/* final */ class Employee { // Interessante que se eu colocar final a class Employee pode receber herança, mas não se deixar ser usado como herença. Não deixar compartilhar suas coisas.
    let hours: Int
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
    
    init(hours: Int) {
        self.hours = hours
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meeting for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)

robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

print()
print()

//* 03 Criando os inits dentro de Class

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isCovertible: Bool) {
        self.isConvertible = isCovertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isCovertible: false)
