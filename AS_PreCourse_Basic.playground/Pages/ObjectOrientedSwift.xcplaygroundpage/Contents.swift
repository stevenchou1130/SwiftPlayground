let x1 = 0
let y1 = 0

let coordinate1: (x: Int, y: Int) = (0,0)

coordinate1.x



 
struct Person {
    let firstName: String
    let lastName: String
 
    func fullName() -> String{
        let personsFullName = "\(firstName) \(lastName)"
        return personsFullName
    }
}
 
let aPerson = Person(firstName: "Steven", lastName: "Chou")
let myFullName = aPerson.fullName()
 




/*
    struct 無法被繼承
 
    struct 可以不用init 就直接使用
    class 一定要init
 */

struct Point {
    let x: Int
    let y: Int
    
    func points(inRange range: Int = 1) -> [Point] {
        var results:[Point] = []
        
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange{
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange{
            
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
        
        return results
    }
}

let coordinatePoint = Point(x: 0, y: 0)
coordinatePoint.x
coordinatePoint.points()


class Enemy{
    
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int){
        self.position = Point(x: x, y: y)
    }
    
    func decreaseLife(by factor: Int){
        life -= factor
    }
}

// inheritance
class SuperEnemy: Enemy{

    var isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
}


class Tower{

    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int){
        self.position = Point(x: x, y: y)
    }
    
    func fire(at enemy: Enemy){
        if isInRange(of: enemy){
            enemy.decreaseLife(by: strength)
            print("Gotcha")
        }else{
            print("Darn! Out of range!")
        }
    }
    
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
        for point in availablePositions{
            if point.x == enemy.position.x && point.y == enemy.position.y{
                return true
            }
        }
        
        return false
    }
}

class LaserTower: Tower {

    override init(x: Int, y: Int){
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
    
    override func fire(at enemy: Enemy) {
        while enemy.life >= 0 {
            enemy.decreaseLife(by: strength)
        }
        
        print("Enemy destroyed!")
    }
}


let tower = Tower(x: 0, y: 0)
let enemy = Enemy(x: 1, y: 1)
let superEnemy = SuperEnemy(x: 1, y: 1)
let laserTower = LaserTower(x: 2, y: 2)

tower.fire(at: enemy)
laserTower.fire(at: enemy)
laserTower.fire(at: superEnemy)



// ========================

class Person1 {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

// Enter your code below
class Doctor: Person1{
    
    override init(firstName: String, lastName: String){
        super.init(firstName: firstName, lastName: lastName)
    }
    
    override func fullName() -> String {
        return "Dr. \(lastName)"
    }
    
}

let someDoctor = Doctor(firstName: "Sam", lastName: "Smith")
someDoctor.fullName()

