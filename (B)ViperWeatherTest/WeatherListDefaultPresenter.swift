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
    let cityLongitude: Int
    let cityLatitude: Int
    let cityWeatherType: String
    let cityWeatherTypeDescription: String
    let cityicon : String?
    let cityWeatherTemperature: Int
    let cityWeatherSpeed: Int
    let cityCloudiness: Int
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
        
        if let weatherConditions = self.interactorManager.getWeatherCondictions(){
            let  weatherViewModel = self.viewModelBuilder.buildWeatherListViewModel(withWeatherModel: weatherConditions)
            view?.displayWeatherConditions(withWeatherViewModel: weatherViewModel)
            
        }else{
            view?.displayError()
        }
    }
    
    func presentWeatherDetail(withCityId cityId: Int) {
        self.router.navigateToWeatherDetail(withCityId: cityId)
    }
    
}


fileprivate class WeatherListViewModelBuilder {
    
    func buildWeatherListViewModel(withWeatherModel weatherModel: Weather) -> WeatherViewModel {
        
        let weatherModel = WeatherViewModel(cityId: weatherModel.cityId, cityName: weatherModel.cityName, cityLongitude: weatherModel.cityLongitude, cityLatitude: weatherModel.cityLatitude, cityWeatherType: weatherModel.cityWeatherType, cityWeatherTypeDescription: weatherModel.cityWeatherTypeDescription, cityicon: nil, cityWeatherTemperature: weatherModel.cityWeatherTemperature, cityWeatherSpeed: weatherModel.cityWeatherSpeed, cityCloudiness: weatherModel.cityCloudiness)
        
        return weatherModel
        
    }
}












