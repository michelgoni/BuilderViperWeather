//
//  WeatherDetailDefaultInteractorManager.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 9/5/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation

class WeatherDetailDefaultInteractorManager: WeatherDetailInteractorManager {
    
    let weatherModel : Weather
    
    init(weatherModel: Weather) {
        self.weatherModel = weatherModel
    }
    
    func getWeatherModel() -> Weather? {
        
        return nil
    }
}
