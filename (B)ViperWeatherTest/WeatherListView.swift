//
//  WeatherListView.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 22/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation

protocol WeatherListView: class {
    
    func displayWeatherConditions(withWeatherViewModel viewModel: WeatherListViewModel)
    func injectWeatherModelForRouter(weatherModel: Weather)
    func displayError()
    
}
