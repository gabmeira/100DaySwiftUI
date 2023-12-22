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


// Retornar vários valores em funções // Tuplas ou tuples

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

//let user = getUser()
//print("Name: \(user.firstName) \(user.lastName)")

func getUser2() -> (firstName: String, lastName: String) {
    ("Taylor2", "Swift2")
}

let user2 = getUser2()
print("Name: \(user2.firstName) \(user2.lastName)")

func getUser3() -> (String, String) {
    ("Taylor3", "Swift3")
}

let user3 = getUser3()
print("Name: \(user3.0) \(user3.1)")

let (firstName, _) = getUser()
print("Name: \(firstName)")

// Personalizar rótulos de parâmetros

func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty arrya //  Começa com um array vazio
    var rolls = [Int]()
    
    // Roll as many dice as needed // Rola quantos dados forem necessários
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    // Send back all the rolls // Envia de volta todos os rolos
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)
print("Valor do dado: \(rolls)")

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
