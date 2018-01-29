struct Friend{
    let name: String
    let age: String
    let address: String?
}

enum FriendError: Error{
    case invalidData(discription: String)
    case someError
}

func friend(from dict: [String: String]) throws -> Friend{
    
    guard let name = dict["name"] else{
        throw FriendError.invalidData(discription: "Invalid name value")
    }
        
    guard let age = dict["age"] else {
        throw FriendError.invalidData(discription: "Invalid age value")
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}


func send(message: String, to friend: Friend){
    
}


let response = ["name": "Steven", "age": "27", "address": "someAddress"]
//let someFriend = try friend(from: response)
//print(someFriend)


do {
    let myFriend = try friend(from: response)
    send(message: "Test", to: myFriend)
}catch FriendError.invalidData(let discription) {
    // Inform the user that they passed in invalidData
    print(discription)
}catch FriendError.someError {
    print()
}




