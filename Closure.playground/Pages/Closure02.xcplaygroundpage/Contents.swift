//: [Previous](@previous)

import Foundation

func calculateSquare(_ n: Int) -> () -> Int {
    
    var square = 1
    
    func answer() -> Int {
        
        square = square * n
        
        return square
        
    }
    
    return answer
}

let a = calculateSquare(5)

print(a())
print(a())
print(a())
print(a())
print(a())
print(a())
