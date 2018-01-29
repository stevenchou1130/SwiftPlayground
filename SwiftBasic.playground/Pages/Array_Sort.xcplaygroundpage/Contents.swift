import Foundation

let animals = ["fish", "cat", "chicken", "dog"]

animals.sorted { (one, two) in return
    one < two
}

let a = animals.sorted { $0 < $1 }
print(a)
