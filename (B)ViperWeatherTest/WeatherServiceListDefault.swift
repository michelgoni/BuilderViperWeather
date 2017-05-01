//
//  WeatherServiceListDefault.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 30/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class WeatherListDefaultRemoteService: WeatherListRemoteService {
    
    func getWeatherDetails(with city: String, completionHandler: @escaping ([Weather]?) -> Void) {
        
        let baseurl = "http://samples.openweathermap.org/data/2.5/find?q=London&units=metric&appid=b1b15e88fa797225412429c1c50c122a1"
        
        Alamofire.request(baseurl, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).validate().responseJSON { response in
            
            switch response.result {
                
            case .success:
                if let value = response.result.value {
                    
                     let weatherJson = JSON(value)
                     let weatherParser: WeatherListDefaultParser = WeatherListDefaultParser()
                        weatherParser.parseJsonFromRemoteService(withJosnFile: weatherJson, completionHandler: { weatherModel in
                           
                            if let weatherModel = weatherModel {
                                completionHandler(weatherModel)
                            }
                        })
                }
                
                
            case .failure(let error):
                
                print(error)
                completionHandler(nil)
                
            }
        }
    }
}


