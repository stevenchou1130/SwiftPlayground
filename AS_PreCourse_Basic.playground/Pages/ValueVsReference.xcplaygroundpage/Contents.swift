struct User {
    var fullName: String
    var email: String
    var age: Int

}

var someUser = User(fullName: "Pasan", email: "pasan@teamtreehouse.com", age: 27)
var anotherUser = someUser

someUser.email = "pasan.premaratne@teamtreehouse.com"
someUser.email
anotherUser.email


class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var somePerson = Person(name: "Steven", email: "steven@gmail.com", age: 27)
var anotherPerson = somePerson

somePerson.email = "steven@hotmail.com"
somePerson.email
anotherPerson.email




/*
 
 自行測試
 如果要加別的參數到子類別，super要放在self下面
 
 */

class Test1 {

    var x: Int
    var y: Int
    var total: Int = 0
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func plus() -> Int {
        
        total = x + y
        return total
    }
}

let test1 = Test1(x: 1, y: 2)
test1.plus()


class Test2: Test1{

    var thirdNumber: Int
    
    init(x: Int, y: Int, thirdNumber: Int) {
        self.thirdNumber = thirdNumber
        super.init(x: x, y: y)
    }
    
    override func plus() -> Int {
        
        total = x + y + thirdNumber
        return total
    }
    
}

let test2 = Test2(x: 1, y: 2, thirdNumber: 3)
test2.plus()






