//
//  WeatherDetailView.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 8/5/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation

protocol WeatherDetailView: class {
    
    func displayWeatherDetail(withWeatherDetailModel weatherDetailModel: WeatherDetailViewModel)
    func displayErrorScreen()
}
