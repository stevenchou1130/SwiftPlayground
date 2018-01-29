enum Day: Int {
    case sunday = 1
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

Day.friday.rawValue


enum DayType {
    case weekday
    case weekend
}



import UIKit

enum ColorComponent{
    case rgb(red: Float, green: Float, blue: Float, alpha: Float)
    case hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
    
    func color() -> UIColor{
        switch self{
        case .rgb(let red, let green, let blue, let alpha):
            return UIColor(colorLiteralRed: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        case .hsb(let hue, let saturation, let brightness, let alpha):
            return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        }
    }
}

ColorComponent.rgb(red: 55.1, green: 120.3, blue: 199.1, alpha: 1.0).color()


// Raw Values

enum Coin: Double{
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.1
    case quarter = 0.25
}

let coins: [Coin] = [.penny, .nickel, .dime, .dime, .quarter, .quarter, .quarter]

func sum(having coins: [Coin]) -> Double {
    var total: Double = 0
    
    for coin in coins {
        total += coin.rawValue
    }
    
    return total
}

sum(having: coins)



enum HTTP: String {
    case post
    case get
    case put
    case delete
}

HTTP.delete.rawValue


enum HTTPStatusCode: Int {
    case success = 200
    case forbidden = 403
    case unauthorized = 401
    case notFound = 404
}

let statusCode = 200

if let httpStatusCode = HTTPStatusCode(rawValue: statusCode){
    print(httpStatusCode)
}


// ====================

enum Cloud {
    case cirrus
    case cumulus
    case altocumulus
    case stratus
    case cumulonimbus
}

enum WeatherCondition {
    case sunny(temperature: Float)
    case rainy(inchesPerHour: Float)
    case cloudy(cloudType: Cloud, windSpeed: Float)
}

let currentWeather = WeatherCondition.cloudy(cloudType: .cirrus, windSpeed: 4.2)

switch currentWeather {
case .sunny(let temperature):
    print("It is sunny and the temperature is \(temperature).")
    
case .rainy(let inchesPerHour):
    print("It is raining at a rate of \(inchesPerHour) inches per hour.")
    
case .cloudy(let cloudType, let windSpeed):
    print("It is cloudy; there are \(cloudType) clouds in the sky, and the wind speed is \(windSpeed).")
}




