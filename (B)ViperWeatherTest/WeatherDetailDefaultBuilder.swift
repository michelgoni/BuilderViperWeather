//
//  WeatherDetailDefaultBuilder.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 8/5/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import UIKit

class WeatherDetailDefaultBuilder: WeatherDetailBuilder {
    
    var interactorManager: WeatherDetailInteractorManager?
    var presenter: WeatherDetailPresenter?
    var view: WeatherDetailView?
    
    
    
    func buildWeatherDetailModule(withWeatherModel weatherModel: Weather) -> UIViewController? {
        
        buildView()
        buildInteractor(withWeatherModel: weatherModel)
        buildPresenter()
        buildCircularDependencies()
        
        return view as? UIViewController
    }
    
    
    // MARK: - Private
    func buildView() {
        
        self.view = WeatherDetailViewController()
    }
    
    func buildInteractor(withWeatherModel weatherModel: Weather) {
        
        self.interactorManager = WeatherDetailDefaultInteractorManager(weatherModel: weatherModel)
    }
    
    func buildPresenter() {
        
        guard let interactorManager = self.interactorManager, let view = self.view else {
            assert(false, "No dependencies available")
            return
        }
        self.presenter = WeatherDetailDefaultPresenter(interactorManager: interactorManager, view: view)
    }
    
    fileprivate func buildCircularDependencies() {
        guard let presenter = self.presenter, let view = self.view as? WeatherDetailViewController else {
            assert(false, "No dependencies available")
            return
        }
        view.presenter = presenter
    }
}
