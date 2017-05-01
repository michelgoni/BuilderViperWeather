//
//  WeatherListParser.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 1/5/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol WeatherListParser {
    
    func parseJsonFromRemoteService(withJosnFile jsonFile: JSON,  completionHandler: @escaping ([Weather]?) -> Void )
}
