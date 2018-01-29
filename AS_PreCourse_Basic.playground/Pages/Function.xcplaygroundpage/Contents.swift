// Area calculation for room #2

let secondLength = 14
let secondWidth = 8

let secondArea =  secondLength * secondWidth


// Area calculation for room #1

func area(length: Int, width: Int) -> Int{
    
    let areaOfReam = length * width
    return areaOfReam
    
}


// No return function

func noReturnFunction1(){

}

func noReturnFunction2() -> Void{
    
}

func noReturnFunction3() -> (){
    
}


// Argument Labels

func remove(havingValue value: String){
    print(value)
}

remove(havingValue: "A")



// Default Values

func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> Int{

    let areaOfReam = area(length: length, width: width)
    
    var price = 0
    
    switch color {
    case "gary": price = areaOfReam * 1
    case "tan": price = areaOfReam * 2
    case "blue": price = areaOfReam * 4
        
    default: price = 0
    }
    
    return price
}

carpetCostHaving(length: 10, width: 10, carpetColor: "blue")

carpetCostHaving(length: 10, width: 10)


// Scope

var secondArray: [Int] = []

func arrayModifier(array: [Int]){

    var arrayOfInts = array
    arrayOfInts.append(5)
    
    
    secondArray = arrayOfInts
    
}

var arrayOfInts = [1,2,3,4]
arrayModifier(array: arrayOfInts)
secondArray



// Argument without lable
// No external name, but have a local name

func someFunction(_ test: Int){}
someFunction(1)




