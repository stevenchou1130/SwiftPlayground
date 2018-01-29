// 無主參考以及隱式解析可選屬性 (待研究)
// https://tommy60703.gitbooks.io/swift-language-traditional-chinese/content/chapter2/16_Automatic_Reference_Counting.html#strong_reference_cycles_for_closures
import UIKit

class Country {
    let name: String
    let capitalCity: City!

    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: name, country: self)
    }
}

class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

var country = Country(name: "Canada", capitalName: "Ottawa")
print("\(country.name)'s capital city is called \(country.capitalCity.name)")
