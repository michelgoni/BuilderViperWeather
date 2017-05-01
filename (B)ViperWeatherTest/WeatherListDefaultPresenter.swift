//
//  WeatherListDefaultPresenter.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 22/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation

struct WeatherListViewModel {
    
    let weatherListviewModel: [WeatherViewModel]
}

struct WeatherViewModel {
    
    let cityId: Int
    let cityName: String
    let cityLongitude: Double
    let cityLatitude: Double
    let cityWeatherType: String
    let cityWeatherTypeDescription: String
    let cityicon : String?
    let cityWeatherTemperature: Double
    let cityWeatherSpeed: Double
    let cityCloudiness: Double
}

class WeatherListDefaultPresenter: WeatherListPresenter {
    
    
    fileprivate let interactorManager: WeatherListInteractorManager
    fileprivate let router: WeatherListRouter
    fileprivate let view: WeatherListView?
    fileprivate let viewModelBuilder = WeatherListViewModelBuilder()
    
    init(interactorManager: WeatherListInteractorManager, router: WeatherListRouter, view: WeatherListView) {
        
        self.interactorManager = interactorManager
        self.router = router
        self.view = view
    }
    
    
    
    func loadData() {
        
        self.interactorManager.getWeatherConditions { weatherViewModel in
            
            if let weatherViewModelToBuild = weatherViewModel {
                let weatherViewModel = self.viewModelBuilder.buildWeatherListViewModel(withWeatherModel: weatherViewModelToBuild)
                self.view?.displayWeatherConditions(withWeatherViewModel: weatherViewModel)
            }else{
                self.view?.displayError()
            }
        }
    }
    
    func presentWeatherDetail(withCityId cityId: Int) {
        self.router.navigateToWeatherDetail(withCityId: cityId)
    }
    
}


fileprivate class WeatherListViewModelBuilder {
    
    func buildWeatherListViewModel(withWeatherModel weatherModel: [Weather]) -> WeatherListViewModel{
    
        var weatherListViewModel : [WeatherViewModel] = []
        for weatherObject in weatherModel {
            
            let weatherModel = WeatherViewModel(cityId: weatherObject.cityId,
                                                cityName: weatherObject.cityName,
                                                cityLongitude: weatherObject.cityLongitude,
                                                cityLatitude: weatherObject.cityLatitude,
                                                cityWeatherType: weatherObject.cityWeatherType,
                                                cityWeatherTypeDescription: weatherObject.cityWeatherTypeDescription,
                                                cityicon: weatherObject.cityicon,
                                                cityWeatherTemperature: weatherObject.cityWeatherTemperature,
                                                cityWeatherSpeed: weatherObject.cityWeatherSpeed,
                                                cityCloudiness: weatherObject.cityCloudiness)
            
            weatherListViewModel.append(weatherModel)
        }

        return WeatherListViewModel(weatherListviewModel: weatherListViewModel)
        
    }
}


