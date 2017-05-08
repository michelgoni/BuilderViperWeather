//
//  WeatherDetailBuilder.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 8/5/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import UIKit

protocol WeatherDetailBuilder {
    
    func buildWeatherDetailModule(withWeatherModel weatherModel: Weather) -> UIViewController?
}
