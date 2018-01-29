// Reference: http://stackoverflow.com/questions/33973724/typecasting-or-initialization-which-is-better-in-swift

var object: Any?

let sumValue = 50
object = sumValue

// Type casting.
if let intSum = object as? Int {
    
    print("The sum value is: \(intSum)")
    
}

// Not recommend type converting.
if let doubleSum = object as? Double {
    
    print("The sum value is: \(doubleSum)")
    
}

//// Comparison
//let confusedDoubleSum = sumValue as? Double
//let correctDoubleSum = Double("hello world")

// Better to cast original type first.
if let intSum = object as? Int {
    
    let doubleSum = Double(intSum)
    print("The sum value is: \(doubleSum)")
    
}
