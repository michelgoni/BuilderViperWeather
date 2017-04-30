//
//  WeatherListRemoteService.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 30/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation

protocol WeatherListRemoteService {
    
    func getWeatherDetails(with city: String, completionHandler: @escaping ([ Weather]?) -> Void)
    
}
