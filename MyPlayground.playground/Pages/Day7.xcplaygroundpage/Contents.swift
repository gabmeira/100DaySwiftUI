import Cocoa
import Foundation

// Functions, part one (funções)
// Reutilizar códigos de funções

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

func printTimesTable(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 5, end: 21)

func calculateWages(people: Int) {
    let total = people * 30_000
    print("The total is \(total)")
}

print()

calculateWages(people: 10)
calculateWages(people: 20)
calculateWages(people: 50)
