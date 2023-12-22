import Cocoa
import Foundation

// Functions, part two (funções)
// Valores Padrão para Parâmetros e funções de lançamento

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

print()

var characteres = ["Lana", "Pam", "Ray", "Sterling"]
print(characteres.count)
characteres.removeAll(keepingCapacity: true)
print(characteres.count)

func findDirections(from: String, to: String, route: String = "fastest", avoidHighway: Bool = false) {
    // code here
}

findDirections(from: "london", to: "Glasgow")
findDirections(from: "london", to: "Glasgow", route: "scenic")
findDirections(from: "london", to: "Glasgow", route: "scenic", avoidHighway: true)
 
func playGame(name: String, cheat: Bool = false) {
    if cheat {
        print("Let's play \(name); I bet I win!")
    } else {
        print("Let's play \(name)!")
    }
}

print("Vamos ver o que acontece: \(playGame(name: "Gabriel", cheat: true))")

// Lidar com erros em Funções

enum PasswordError: Error {
    case short, obvious
}

func checkPassord(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassord(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

// checkPoint Four - Ponto de Verificação 4

//var numero = Int

enum NumeroFora: Error {
    case fora, noroot
}

func RaizQuadradaDezK(of numero: Int) throws -> String {
    for i in 1...100 {
        
        if numero < 1 || numero > 10_000 {
            throw NumeroFora.fora
        }
        
        if numero == i * i {
            return "Raiz = \(i)"
        }
        
    }
    
    throw NumeroFora.noroot
}

do {
    let valor = try RaizQuadradaDezK(of: 4)
    print("O valor é: \(valor)")
} catch NumeroFora.fora {
    print("Fora do Limite")
} catch NumeroFora.noroot {
    print("Não tem raiz")
}
