//
//  Container.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 22/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation

class Container {
    
    static let shared = Container()
    
    func weatherListBuilder() ->WeatherListBuilder {
        
        return WeatherListDefaultBuilder()
    }
    
}
