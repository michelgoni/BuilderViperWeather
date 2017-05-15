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
        
        if let weatherDetails = self.interactorManager.getWeatherModel() {
            
            print(weatherDetails)
            self.view?.displayWeatherDetail(withWeatherDetailModel: self.viewModelBuilder.buildViewModel(withWeatherMode: weatherDetails))
        }else{
            self.view?.displayErrorScreen()
        }
    }
}

class WeatherDetailViewModelBuilder {
    
    
    func buildViewModel(withWeatherMode weatherModel: Weather) -> WeatherDetailViewModel {

        
        let weatherDescription: TemperatureType?
        
        switch weatherModel.cityWeatherTemperature {
            
        case let x where x < 0:
            weatherDescription = .damnCold
            
        case let x where x < 7:
            weatherDescription = .cold
            
        case let x where x < 27:
            weatherDescription = .hot
            
        case let x where x < 37:
            weatherDescription = .damnHot
            
        default:
             weatherDescription = .cold
        
        }

        return WeatherDetailViewModel(cityName: weatherModel.cityName,
                                      cityWeatherType: weatherModel.cityWeatherType,
                                      cityWeatherTypeDescription: weatherModel.cityWeatherTypeDescription,
                                      cityWeatherTemperature: weatherModel.cityWeatherTemperature,
                                      cityWeatherSpeed: weatherModel.cityWeatherSpeed,
                                      cityCloudiness: weatherModel.cityCloudiness,
                                      temperatureType: weatherDescription!,
                                      cityLongitude: weatherModel.cityLongitude,
                                      cityLatitude: weatherModel.cityLatitude)
    }
    
}
