struct Person{
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func fullName() -> String {
        if middleName == nil{
            return firstName + " " + lastName
        }else{
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "Steven", middleName: nil, lastName: "Chou")
me.fullName()


let airportCodes = ["CDG": "Charles De Gaulle"]
let newYorkAirport = airportCodes["JFK"]

if let newYorkAirport = airportCodes["JFK"]{
    print(newYorkAirport)
}else{
    print("Whoops! That key does not exist!")
}


// Optional Binding Using If Let

let weatherDictionary: [String: [String: String]] = [
    "currently" : ["temperature": "22.3"],
    "daily" : ["temperature": "22.3"],
    "weekly" : ["temperature": "22.3"]
]

if let dailyWeather = weatherDictionary["daily"]{
    if let highTemp = dailyWeather["temperature"]{
        print(highTemp)
    }
}

if let dailyWeather = weatherDictionary["daily"], let highTemp = dailyWeather["temperature"] {
    print(highTemp)
}


// Downsides to Using If Let
struct Friend {
    let name: String
    let age: String
    let address: String?
}

func new(friendDictionary: [String: String]) -> Friend? {
    if let name = friendDictionary["name"], let age = friendDictionary["age"]{
        let address = friendDictionary["address"]
        return Friend(name: name, age: age, address: address)
    }else{
        return nil
    }
}


// Early Exit

func newFriend(friendDictionary: [String: String]) -> Friend? {
    
    guard let name = friendDictionary["name"], let age = friendDictionary["age"] else {
        return nil
    }
    
    let address = friendDictionary["address"]
    
    return Friend(name: name, age: age, address: address)
}



// Test
struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String: String]){
        
        guard let title = dict["title"], let author = dict["author"] else{
            return nil
        }
        
        self.title = dict["title"]!
        self.author = dict["author"]!
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
    }
}

let dict = Book(dict: ["title": "title", "author": "author", "price": "price", "pubDate": "pubDate"])






