//
//  WeatherListDefaultRouter.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 22/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import UIKit

class WeatherListDefaultRouter: WeatherListRouter {
    
    weak var viewController: UIViewController?
    
    init(viewcontroller: UIViewController) {
        self.viewController = viewcontroller
    }
    
    
    
    //MARK- WeatherListRouter delegate
    func navigateToWeatherDetail( weatherModel: Weather) {
        
        //At this point, we should have a new builder in order to obtain a new viewController (a weatherdetailViewController) where our property navigationController could navigate to
        if let weatherdetailViewController = self.weatherDetailBuilder().buildWeatherDetailModule(withWeatherModel: weatherModel){
            
            self.viewController?.navigationController?.pushViewController(weatherdetailViewController, animated: true)
        }

    }
    
    // MARK: - Private
    
    fileprivate func weatherDetailBuilder () -> WeatherDetailBuilder {
        
        return Container.shared.weatherDetailBuilder()
    }

}
