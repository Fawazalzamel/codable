import UIKit


//let jsonData = """
//
//[
//
//{"id": 1,"name": "John Doe","email": "john@example.com"},
//{"id": 2,"name": "fawaz","email": "fawaz@example.com"},
//{"id": 3,"name": "ali","email": "ali@example.com"}
//
//]
//""".data(using: .utf8)!
//
//
//struct User : Codable{         HERE!!!!
//    var id: Int
//    var name: String
//    var email : String
//    
//}
//
//do{
//    let users = try JSONDecoder().decode([User].self, from: jsonData)
//
//    print(users)
//    
//    for user in users {
//        print(user.name)
//        print(user.id)
//    }
//}
//
//catch{
//    print(error)
//}

// Task Weather


let jsonData = """
{
    "city": "Kuwait",
    "temperature": 25,
    "condition": "Sunny",
    "forecast": [
        {
            "day": "Monday",
            "high": 29,
            "low": 17,
            "condition": "Partly Cloudy"
        },
        {
            "day": "Tuesday",
            "high": 18,
            "low": 13,
            "condition": "Rain"
        }
    ]
}
""".data(using: .utf8)!


struct Weather : Codable{
    
    var city : String
    var temperature : Int
    var condition : String
    var forecast : [Forecast]
    
    struct Forecast : Codable{
        
        var day : String
        var high : Int
        var low : Int
        var condition : String
    }
 
    
}
do {
    let weathers = try JSONDecoder().decode(Weather.self, from: jsonData)

    for forecast in weathers.forecast {
        print(forecast.condition)
        print(forecast.day)
        print(forecast.high)
        print(forecast.low)
    }
} catch {
    print(error)
}
