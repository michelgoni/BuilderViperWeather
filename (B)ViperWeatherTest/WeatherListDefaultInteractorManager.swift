//
//  WeatherListDefaultInteractorManager.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 22/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation

class WeatherListDefaultInteractorManager: WeatherListInteractorManager {
    
    
    func getWeatherCondictions() -> Weather? {
        
        let weather: WeatherListDefaultRemoteService = WeatherListDefaultRemoteService()
        
        weather.getWeatherDetails(with: "Londo", completionHandler: { WeatherViewModel in
            
            print(WeatherViewModel!)
        })
        
        return nil
    }
}
