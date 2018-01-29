// Array
var todo = ["A", "B", "C"]

todo.append("D")
todo = todo + ["E"]
todo += ["F"]

[1,2,3] + [4]


/* 

== In array, only has one type ==

var errorArrey = ["X","Y",100] -> Error!

*/


// Insert Using Indexes

todo.insert("insert", at: 2)
todo.remove(at: 0)
todo


// Dictionaries

/*
        
        Airport Code (Key)      Airport Name (Value)
        
        LGA                     La Guardia
        LHR                     Heathrow
        CDG                     Charles de Gaulle
        HKG                     Hong Kong International
        DXB                     Dubai International

*/


let airportCodes:[String: String] =
[
    "LGA": "La Guardia",
    "LHR": "Heathrow",
    "CDG": "Charles de Gaulle",
    "HKG": "Hong Kong International",
    "DXB": "Dubai International"
]

// Dictionaries 不會記下加入的順序，Array會記住順序



airportCodes["LGA"]

todo.count
var x = 0
while x < todo.count{
    print(x)
    x += 1
}


print()
print("---------------")
print()


/*
 
 Create a random number
 
 */

import GameKit

let randomTemperature = GKRandomSource.sharedRandom().nextInt(upperBound: 100)

print(randomTemperature)





