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

let root = sqrt(169)

print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
    
    // ou
    //return string1.sorted() == string2.sorted()
    
    // ou menor ainda
    // string1.sorted() == string2.sorted() // Isso só funciona quando só temos uma linha de código na função
}

print(areLettersIdentical(string1: "abc", string2: "cab"))

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

func pythagorasResumida(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let resultado = pythagoras(a: 3, b: 4)
print(resultado)

func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

print(greet(name: "Taylor Swift"))

func isEveryoneAdult(ages: [Int]) -> Bool {
    for age in ages {
        if age < 18 {
            return false
        }
    }
    return true
}

print(isEveryoneAdult(ages: [20, 20, 16, 24])) // Quando a matriz/array tem algum valor abaixo de 18, ele da como falso, mas se todos os valores forem acima de 18 ele da como verdadeiro. Porque ele sai do laço/for sem resultado e cai no return true direto.
