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
    func navigateToWeatherDetail(withCityId cityID: Int) {
        
    }
}
