import Cocoa
import Foundation

// Structs, part two

//struct BankAccount {
//    private(set) var funds = 0
//
//    mutating func deposit(amount: Int) {
//        funds += amount
//    }
//    
//    mutating func withdraw(amount: Int) -> Bool {
//        if funds >= amount {
//            funds -= amount
//            return true
//        } else {
//            return false
//        }
//    }
//}
//
//var account = BankAccount()
//account.deposit(amount: 100)
//
//let sucess = account.withdraw(amount: 200)
//
//if success {
//    print("Withdrew money successfully")
//} else {
//    print("Failed to get the money")
//}
//
////account.funds -= 1000
//
//struct School {
//    static var studentCount = 0
//    
//    static func add(student: String) {
//        print("\(student) joined the school.")
//        studentCount += 1
//    }
//}


// Importante

//* Estruturas podem ter variáveis e constante (conhecidas como propriedades) e funções (conhecidas como métodos)

// CheckPoint 6 - Ponto de Verificação 6

struct Car {
    
    let modelo: String
    let numberAccent: Int
    private(set) var marchaAtual = 1
    
    mutating func Up() {
        if marchaAtual + 1 > 10 {
            print("Você está no topo!")
        } else {
            marchaAtual += 1
        }
    }
    
    mutating func Down() {
        if marchaAtual - 1 < 1 {
            print("Você está na marcha mais baixa!")
        } else {
            marchaAtual -= 1
        }
    }
}

var prefect = Car(modelo: "Ford", numberAccent: 506, marchaAtual: 14)

print(prefect)

// funcionou, mas penso que talvez tenha que colocar um init para melhorar, mas não vejo como sendo que já está aparecendo o que precisa. 
