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

print()
print()

//* 05 Desinicializador de Class

class User5 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User5(id: i)
    print("User \(user.id): I'm in control!")
}

var users = [User5]()

for i in 1...3 {
    let user = User5(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")

// Exercícios 05 Desinicializadores Class

class IceCream {
    deinit {
        print("No more icecream :(")
    }
}

print()
print()

//* 06 Variáves dentro de Class

class User6 {
    var name = "Paul"
}

var user = User6()

user.name = "Taylor"

user = User6()

print(user.name)

// Exercícios 06 Mutabilidade Class

class Pizza {
    private var toppings = [String]()
    func add(topping: String) {
        toppings.append(topping)
    }
}

var pizza = Pizza()
pizza.add(topping: "Mushrooms")

print()

class School {
    let students = 200
    func expel(studant: String, for reason: String) {
        print("\(studant) has been expelled for \(reason).")
//        students -= 1 // Essa parte não consegue funcionar porque está subtraindo uma constante
    }
}

let school = School()
school.expel(studant: "Jason", for: "coding during class")

print()

class SewingMachine {
    var itemsMade = 0
    /*  mutating */ func makeBag(count: Int) { // mutating não é uma instancia valida em Class
        itemsMade += count
    }
}

var machine = SewingMachine()
machine.makeBag(count: 1)

print()

struct Park {
    var numberOfFlowers = 1000
    func plantFlowers() { // Esta parte precisa estar marcada como mutante
//        numberOfFlowers += 50
    }
}

let park = Park()
park.plantFlowers()

print()

struct Piano {
    var untunedKeys = 3
    mutating func tune() {
        if untunedKeys > 0 {
            untunedKeys -= 1
        }
    }
}

var piano = Piano()
piano.tune()

print()

class Beach {
    var lifeguards = 10
    /* mutating */ func addLifeguards(count: Int) { // Não se usa mutating em class
        lifeguards += count
    }
}

var beach = Beach()
beach.addLifeguards(count: 2)

print()

struct Kindergarten {
    var numberOfScreamingKids = 30
    mutating func handOutIceCream() {
        numberOfScreamingKids = 0
    }
}

let kindergarten = Kindergarten()
//kindergarten.handOutIceCream() // Não da para chamar um mutating com uma contante

print()

class Light {
    var onState = false
    func toggle() {
        if onState {
            onState = false
        } else {
            onState = true
        }
        print("Click")
    }
}

let light = Light()
light.toggle()

print()

struct Code {
    var numberOfBugs = 100
    mutating func fixBug() {
        numberOfBugs += 3
    }
}

var code = Code()
code.fixBug()

print()

class Phasers {
    var energyLevel = 100
    func firePhasers() {
        if energyLevel > 10 {
            print("Firing!")
        }
    }
}

var phasers = Phasers()
phasers.firePhasers()

print()

class Sun {
    var isNova = false
    func goNova() {
        isNova = true
    }
}

let sun = Sun()
sun.goNova()

print()

struct Barbecue {
    var charcoalBricks = 20
    mutating func addBricks(_ number: Int) {
        charcoalBricks += number
    }
}

var barbecue = Barbecue()
barbecue.addBricks(4)
