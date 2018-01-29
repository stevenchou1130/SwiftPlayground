protocol FullNameable {
    var fullName: String { get }
}

//struct User: FullNameable{
//    var fullName: String
//}
//
//let user = User(fullName: "John Smith")

struct Friend: FullNameable{
    var firstName: String
    var middleName: String
    var lastName: String
    
    var fullName: String{
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Kuan", middleName: "Ting", lastName: "Chou")

friend.fullName



import Foundation

enum EmployeeType {
    case manager
    case traditional
}

protocol Payable{
    func pay() -> Paycheck
}

struct Paycheck{
    let base: Double
    let benefits: Double
    let deductions: Double
    let vacation: Double
}

class Employee{
    let name: String
    let addredd: String
    let startDate: Date
    let type: EmployeeType
    
    init(name: String, address: String, startDate: Date, type: EmployeeType) {
        self.name = name
        self.addredd = address
        self.startDate = startDate
        self.type = type
    }
}

class HourlyEmployee: Employee, Payable{
    var hourlyWage = 15.00
    var hourlyWorked = 0.0
    let vacation = 0
    
    func pay() -> Paycheck {
        let base = hourlyWage * hourlyWorked
        return Paycheck(base: base, benefits: 0, deductions: 0, vacation: 0)
    }
}

class SalariedEmployee: Employee, Payable{
    var salary = 50000.00
    var benefits = 1000.00
    var deductions = 0.0
    var vacation = 2.0
    
    func pay() -> Paycheck {
        let monthly = salary/12
        return Paycheck(base: monthly, benefits: benefits, deductions: deductions, vacation: vacation)
    }
}

func pay(employee: Payable){
    employee.pay()
}

let employee = SalariedEmployee(name: "Steven", address: "someAddress", startDate: Date(), type: .traditional)

pay(employee: employee)


// Loosely Related Types

protocol Blendable {
    func blend()
}

class Fruit: Blendable {
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func blend() {
        print("I'm mush!")
    }
}

class Dairy{
    var name: String
    
    init(name: String){
        self.name = name
    }
}

class Cheese: Dairy {}

class Milk: Dairy, Blendable {
    func blend() {
        print("I haven't changed at all! I'm still milk!")
    }
}

func makeSmoothie(with ingredients: [Blendable]){
    for ingredient in ingredients{
        ingredient.blend()
    }
}

let strawberry = Fruit(name: "Strawberry")
let cheddar = Cheese(name: "Chedder")
let chocolateMilk = Milk(name: "Chocolate")

let ingredients: [Blendable] = [strawberry, chocolateMilk]

makeSmoothie(with: ingredients)



// Protocol Inheritance
protocol Printable{
    func description() -> String
}

protocol PrettyPrintable: Printable{
    func prettyDescription() -> String
}

struct User: PrettyPrintable{
    let name: String
    let age: Int
    let address: String
    
    func description() -> String {
        return "\(name), \(age), \(address)"
    }
    
    func prettyDescription() -> String {
        return "name: \(name)\nage: \(age)\naddress: \(address)"
    }
}

let user = User(name: "Steven", age: 27, address: "Address")
print(user.prettyDescription())





