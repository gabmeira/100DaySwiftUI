import Cocoa
import Foundation

// Repetições loop

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

// loops aninhados - É um loop dentro do outro

for i in 1...12 {
    print("The \(i) times table:")
    
    for j in 1...12 {
        print(" \(j) x \(i) is \(j * i)")
    }
    
    print()
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names {
    print("[CENSORED] is a secret agent!")
}

let names1 = ["Piper", "Alex", "Suzanne", "Gloria"]

print(names1[0])

print(names1[1...3])

print(names1[0...])

// Loops while

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...1000)

let amount = Double.random(in: 0...1)

// criamos um inteiro para armazenar nosso roll
var roll = 0

// continuamos o loop até chegarmos a 20
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// se estamos aqui significa o loop
print("Critical hit!")

let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]

var colorCounter = 0

while colorCounter < 5 {
    print("\(colors[colorCounter]) is a popular color.")
    colorCounter += 1
}

var counter = 2

while counter < 64 {
    print("\(counter) is a power of 2.")
    counter *= 2
}

var page: Int = 0
while page <= 5 {
    page += 1
    print("I'm reading page \(page).")
}

var itemsSold: Int = 0
while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold % 1000 == 1000 {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

print()

var speed = 50
while speed <= 55 {
    print("Accelerating to \(speed)")
    speed += 1
}

// Pular loops - Breaks e Continue

print()

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix("jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}

print()

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

print()

let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }
    
    count += 1
}

print("You had \(count) scores before you got 0.")

print()

let options = ["up", "down", "left", "right"]

let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            
            let attempt = [option1, option2, option3]
            
            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}

print()

// CheckPoint 3 - Ponto de Verificação 3


// Resolução sem dicas
for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("\(i) - FizzBuzz")
    } else if i % 3 == 0 {
        print("\(i) - Fizz")
    } else if i % 5 == 0 {
        print("\(i) - Buzz")
    } else {
        print(i)
    }
}

print()

// Resolução com dicas
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("\(i) - FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("\(i) - Fizz")
    } else if i.isMultiple(of: 5) {
        print("\(i) - Buzz")
    } else {
        print(i)
    }
}
