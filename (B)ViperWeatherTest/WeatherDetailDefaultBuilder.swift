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
        
        return view as? UIViewController
    }
    
    func buildView() {
        
        self.view = WeatherDetailViewController()
    }
}
