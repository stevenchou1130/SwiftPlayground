import Foundation

// [Example 1]

// Passing a normal parameter to the function

func requestNumber(_ num: Int) {

    print(num)

}

requestNumber(5)

// Passing a closure as parameter to the function

func requestStations(completion: @escaping ([String]) -> Void) {

    completion([ "Done" ])

}

// normal function

func f1(requestedStations: [String]) {

    print(requestedStations)

}

requestStations(completion: f1)

// closure

let f2: ([String]) -> Void = { requestedStations in


    print(requestedStations)

}

// f1 ~= f2

requestStations(completion: f2)

// [Example 2]

func add(x: Int, y: Int) -> Int {

    return x + y

}

func multiply(x: Int, y: Int) -> Int {

    return x * y

}

func calculate(x: Int, y: Int, op: (Int, Int) -> Int) -> Int {

    return op(x, y)

}

let added1 = calculate(x: 3, y: 5, op: add) // normal function

let added2 = calculate(x: 3, y: 5, op: { a, b in return a + b }) // closure

let added3 = calculate(x: 3, y: 5, op: +) // simpified closure

let multiplied1 = calculate(x: 3, y: 5, op: multiply) // normal function

let multiplied2 = calculate(x: 3, y: 5, op: { a, b in return a * b }) // closure

let multiplied3 = calculate(x: 3, y: 5, op: *) // simpified closure
