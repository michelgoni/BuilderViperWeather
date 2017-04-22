//
//  Weather.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 22/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation



struct Weather {
    
    let cityId: Int
    let cityName: String
    let cityLongitude: Int
    let cityLatitude: Int
    
    let cityWeatherType: String
    let cityWeatherTypeDescription: String
    
    let cityicon : String?
    
    let cityWeatherTemperature: Int
    let cityWeatherSpeed: Int
    let cityCloudiness: Int
    
    
    
    static func generateWeatherMockdata () -> Weather? {
        
        let weatherMockModel = Weather(cityId: 2643743, cityName: "London", cityLongitude: Int(-0.13), cityLatitude: Int(51.51), cityWeatherType: "Drizzle", cityWeatherTypeDescription: "light intensity drizzle", cityicon: nil, cityWeatherTemperature: 22, cityWeatherSpeed: Int(4.1), cityCloudiness: 90)
        
        return weatherMockModel
        
        
    }
}






static fun

