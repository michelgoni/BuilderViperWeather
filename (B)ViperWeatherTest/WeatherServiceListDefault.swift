//
//  WeatherServiceListDefault.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 30/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class WeatherListDefaultRemoteService: WeatherListRemoteService {
    
    
    func getWeatherDetails(with city: String, completionHandler: @escaping ([Weather]?) -> Void) {
        
        let baseurl = "http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b1b15e88fa797225412429c1c50c122a1"
        
        Alamofire.request(baseurl, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).validate().responseJSON { response in
            
            print(response)
            
        }
        
        
    }
}


