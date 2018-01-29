//: Playground - noun: a place where people can play

import UIKit

protocol Animal {
    func makeSound()
    func move()
}

struct Dog: Animal {
    func makeSound() {
        print("Woof.")
    }
    
    func move() {
        print("walk around like a dog")
    }
    
    func bite() {
        print("bite")
    }
}

struct Cat: Animal {
    func makeSound() {
        print("Meow.")
    }
    
    func move() {
        print("walk around like a cat")
    }
    
    func scratch() {
        print("scratch")
    }
}

var animal: Animal = Dog()

print("animal type: \(animal)")

animal = Cat()

animal.makeSound()
animal.move()



