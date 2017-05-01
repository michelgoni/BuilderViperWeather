//
//  WeatherListDefaultInteractorManager.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 22/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation

class WeatherListDefaultInteractorManager: WeatherListInteractorManager {
    
    
    func getWeatherConditions(completionHandler: @escaping ([Weather]?) -> Void)  {
        
        let weather: WeatherListDefaultRemoteService = WeatherListDefaultRemoteService()
        
        weather.getWeatherDetails(with: "London", completionHandler: { WeatherViewModel in
            
            if let weatherViewModel = WeatherViewModel {
                
                completionHandler(weatherViewModel)
            }
        })
        
       
    }
}
