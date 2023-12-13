import Foundation
import Cocoa

// Por que Swift?
// Então, você deve aprender Swift porque você pode ganhar muito dinheiro com ele, mas também porque ele faz muitas coisas muito bem. Sem cruft, sem confusão, apenas muito poder na ponta dos dedos. O que não gostar?


// Sobre este curso
// É um curso prático, com mais coisas para fazer do que estudar/aprofundar. Ainda terá aprofundamento quando necessário. Frase final: Programar é uma arte: não gaste todo o seu tempo afiando o lápis quando deveria estar desenhando.

// Como acompanhar
// Há um monte de código mostrado neste livro, e eu realmente quero encorajá-lo a tentar tudo sozinho - digite o código em seu computador, execute-o e veja a saída, em seguida, experimente um pouco para ter certeza de que você o entendeu.

// Como criar variáveis e constantes

// A palavra (var) significa criar uma nova variável
// O sinal de (=) atripui um valor a nossa variável

// Exemplo Var

var nome = "Gabriel"
nome = "Meira"
nome = "Água"

// Exemplo Constante (let)

let sobrenome = "Meira" // Constante não são permitido mudanças

// Exemplo de print usando var

var playerName = "Gabriel"
print(playerName)

playerName = "Naflali"
print(playerName)

playerName = "Wendy"
print(playerName)

// Observação constante (let)
// Se possível sempre utilize constantes (let), o swift vai conseguir otimizar melhor.

let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

// Criando Strings

let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple enginner
"""

print(actor.count)

let nameLength = actor.count
print(nameLength)

print(result.uppercased())

print(movie.hasPrefix("A day"))

print(filename.hasSuffix(".jpg")) // Vai dar verdadeiro (true).

print(filename.hasSuffix(".JPG")) // Vai dar falso (false), as Strings diferencial letras maiúsculas de minúsculas.

// Números inteiros

let score = 10

let reallyBig = 100_000_000 // Os (_) são completamente ignorados pelo Swift

let reallyBigTwo = 1_00_0_000_00 // Para exemplo esse número é o mesmo do anterior.

print("\(reallyBig) e \(reallyBigTwo) são iguais.")

// Também temos os Operadores aritméticos

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

print(score)
print(lowerScore)
print(higherScore)
print(doubledScore)
print(squaredScore)
print(halvedScore)

var counter = 10

counter = counter + 5
print(counter)

counter += 5
print(counter)

counter *= 2
print(counter)

counter -= 10
print(counter)

counter /= 2
print(counter)

let number = 120
print(number.isMultiple(of: 3))

print(120.isMultiple(of: 3))

// Armazenamento de Números decimais

let number1 = 0.1 + 0.2
print(number1)

let a = 1
let b = 2.0
let c1 = a + Int(b)
let c2 = Double(a) + b
print(c1)
print(c2)

var rating = 5.0
print(rating)

rating *= 2 // Da para usar operadores de atribuição entre números inteiros e decimais.
print(rating)
