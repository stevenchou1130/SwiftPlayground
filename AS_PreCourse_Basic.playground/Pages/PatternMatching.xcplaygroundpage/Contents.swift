enum Coin: Double{
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.1
    case quarter = 0.25
}

let wallet: [Coin] = [.penny, .nickel, .dime, .dime, .quarter, .quarter, .quarter, .dime, .nickel, .penny, .dime, .quarter, .nickel]

var count = 0

for coin in wallet{
    switch coin {
    case .quarter: count += 1
    default: continue
    }
}

count = 0

for case .quarter in wallet{
    count += 1
}

for coin in wallet{
    if case .nickel = coin {
        print("Not so much money")
    }else if case .dime = coin {
        print("Better than nothing")
    }
}


let someOptional: Int? = 42
if case .some(let x) = someOptional{
    print(x)
}


// Nil Coalescing Operator

let firstName: String? = "Pasan"
let userName = "Pasanpr"


// == way 1 ==
//var displayName: String
//
//if let name = firstName{
//    displayName = name
//}else{
//    displayName = userName
//}

// == way 2 ==
// let displayName = firstName != nil ? firstName! : userName

// == way 3 ==
let displayName = firstName ?? userName

print(displayName)












