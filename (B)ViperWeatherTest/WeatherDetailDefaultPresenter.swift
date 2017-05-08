//
//  WeatherDetailDefaultPresenter.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 8/5/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation

enum TemperatureType {
    case hot
    case damnHot
    case cold
    case damnCold
}


struct WeatherDetailViewModel {
    
    let cityName: String
    let cityWeatherType: String
    let cityWeatherTypeDescription: String
    let cityWeatherTemperature: Double
    let cityWeatherSpeed: Double
    let cityCloudiness: Double
    
    let temperatureType: TemperatureType
    
    let cityLongitude: Double
    let cityLatitude: Double
}
