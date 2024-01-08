import Cocoa
import Foundation

// Encerramentos, Passagem de Funções em Funções

let team = ["Gloria", "Suzanne", "Piper", "Tasha", "Tiffany"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

let captaiFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation...")
    animations()
}


func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy: () -> Void = greetUser
greetCopy()

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)


func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

//* Voltei de um recesso de 2 semanas agora e anteriormente parei em fechamentos o que parece ser bem dificil de entender, visto que muda um pouco a forma dea sintaxe. Bom irei continuar, mesmo meio sem entender.

//* De todas as diversas partes da linguagem Swift, eu diria que os encerramentos são a coisa mais difícil de aprender. Não apenas a sintaxe é um pouco difícil para os seus olhos no início, mas o próprio conceito de passar uma função para outra função leva um pouco de tempo para ser absorvido.

//* Então, se você leu esses capítulos e sente que sua cabeça está prestes a explodir, isso é ótimo – significa que você está a meio caminho de entender os fechamentos!

// Ponto de Verificação - CheckPoint

// Preciso usar sorted() filter() map()
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//func ordenamentoTotal() {
//    luckyNumbers.sorted { $0 < $1 }
//    print(luckyNumbers.sorted { $0 < $1 })
//    
//    luckyNumbers.filter { $0 % 2 != 0 }
//    print(luckyNumbers.filter {$0 % 2 != 0 })
//    
////    luckyNumbers.map { print("\($0) is a lucky number.")}
//    print(luckyNumbers.map { print("\($0) is a lucky number.")})
//}
print()
print(luckyNumbers.filter{!$0.isMultiple(of: 2)}.sorted{ $1 > $0 }.map{print("\($0) é um número da sorte")})

// Bom esse foi o melhor resultado que consegui. A parte do .map está me incomodando, visto que no final fica aparecendo [(), ... várias vezes e que o .map parece um loop e acho que não é bem isso. Por hora vou com essa solução para continuar progredindo. 


