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

class WeatherDetailDefaultPresenter: WeatherDetailPresenter {
    
    fileprivate let interactorManager: WeatherDetailInteractorManager
    fileprivate weak var view: WeatherDetailView?
    fileprivate let viewModelBuilder = WeatherDetailViewModelBuilder()
    
    init(interactorManager: WeatherDetailInteractorManager, view: WeatherDetailView) {
        self.interactorManager = interactorManager
        self.view = view
    }
    
    func loadData() {
        
    }
}

class WeatherDetailViewModelBuilder {
    
    func buildViewModel(withWeatherMode weatherModel: Weather) -> WeatherDetailViewModel {
        
        
    }
    
}
