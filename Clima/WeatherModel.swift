//
//  WeatherModel.swift
//  Clima
//
//  Created by Jeffrey Wolf on 24.07.20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    //These are stored properties
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    //Another computed property
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    //COMPUTED PROPERTIES
    //They always have to be a 'var' because their value always changes
    //They need a name and a data type
    //They
    // var aProperty: Int {
    //  return 2 + 5 (this is the computed property part)
    // }
    
    //The following is a computed property
    var conditionName: String {
        // use switch statement to match the id code with the weather condition
        switch conditionID {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.heavyrain"
        case 600...622:
            return "snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.fill"
        default:
            return "cloud"
        }
    }
    
    
}
