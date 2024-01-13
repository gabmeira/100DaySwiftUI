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

//* 04 Copiar Class

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()

var user2 = user1
user2.username = "Taylor"

var user3 = user2
user3.username = "Gabriel"

print(user1.username)
print(user2.username)
print(user3.username)

print()
print()

// Exercícios 04 Copiar Class

struct GalacticaCrew {
    var isCylon = false
}

var starbuck = GalacticaCrew()
var tyrol = starbuck
tyrol.isCylon = true

print(starbuck.isCylon)
print(tyrol.isCylon)

print()

class Statue {
    var sculptor = "Unknown"
}

var venusDeMilo = Statue()
venusDeMilo.sculptor = "Alexandros of Antioch"

var david = Statue()
david.sculptor = "Michelangelo"

print(venusDeMilo.sculptor)
print(david.sculptor)

print()

class Starship {
    var maxWarp = 9.0
}

var voyager = Starship()
voyager.maxWarp = 9.975

var enterprise = voyager
enterprise.maxWarp = 9.6

print(voyager.maxWarp)
print(enterprise.maxWarp)

print()

struct Calculator {
    var currentTotal = 0
}

var baseModel = Calculator()
var casio = baseModel
var texas = baseModel

casio.currentTotal = 556
texas.currentTotal = 384

print(casio.currentTotal)
print(texas.currentTotal)

print()

class Author {
    var name = "Anonymous"
}

var dickens = Author()
dickens.name = "Charles Dickens"

var austen = dickens
austen.name = "Jane Austen"

print(dickens.name)
print(austen.name)

print()

class Hater {
    var isHating = true
}

var hater1 = Hater()
var hater2 = hater1

hater1.isHating = false

print(hater1.isHating)
print(hater2.isHating)

print()

class Hospital {
    var onCallStaff = [String]()
}

var londonCentral = Hospital()
var londonWest = londonCentral

londonCentral.onCallStaff.append("Dr Harlan")
londonWest.onCallStaff.append("Dr Haskins")

print(londonCentral.onCallStaff.count)
print(londonWest.onCallStaff.count)

print()

class Ewok {
    var fluffinessPercentage = 100
}

var chirpa = Ewok()
var wicker = Ewok()

chirpa.fluffinessPercentage = 90

print(wicker.fluffinessPercentage)
print(chirpa.fluffinessPercentage)

print()

class Queen {
    var isMotherOfDragons = false
}

var elizabeth = Queen()
var daenerys = Queen()

daenerys.isMotherOfDragons = true

print(elizabeth.isMotherOfDragons)
print(daenerys.isMotherOfDragons)

print()

class BasketballPlayer {
    var height = 200.0
}

var lebron = BasketballPlayer()
lebron.height = 203.0

var curry = BasketballPlayer()
curry.height = 190

print(lebron.height)
print(curry.height)

print()

class Magazine {
    var pageCount = 132
}

var example = Magazine()
var wired = example

wired.pageCount = 164

var vogue = example
vogue.pageCount = 128

print(wired.pageCount)
print(vogue.pageCount)

print()

class Hairdresser {
    var clients = [String]()
}

var tim = Hairdresser()
tim.clients.append("Jess")

var dave = tim
dave.clients.append("Sam")

print(tim.clients.count)
print(dave.clients.count)
