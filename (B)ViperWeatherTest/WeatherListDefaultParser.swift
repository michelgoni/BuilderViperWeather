//
//  WeatherListDefaultParser.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 1/5/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import Foundation
import SwiftyJSON

class WeatherListDefaultParser: WeatherListParser {
    
    func parseJsonFromRemoteService(withJosnFile jsonFile: JSON, completionHandler: @escaping ([Weather]?) -> Void) {
        
        var weatherArray = [Weather]()

        let weatherModel = Weather(cityId: jsonFile["list"][0]["id"].intValue,
                                   cityName: jsonFile["list"][0]["name"].stringValue,
                                   cityLongitude: jsonFile["list"][0]["coord"]["lat"].doubleValue,
                                   cityLatitude: jsonFile["list"][0]["coord"]["lat"].doubleValue,
                                   cityWeatherType: jsonFile["list"][0]["weather"][0]["main"].stringValue,
                                   cityWeatherTypeDescription: jsonFile["list"][0]["weather"][0]["description"].stringValue,
                                   cityicon: "http://openweathermap.org/img/w/\(jsonFile["list"][0]["weather"][0]["icon"].stringValue).png",
                                   cityWeatherTemperature: jsonFile["list"][0]["main"]["temp"].doubleValue,
                                   cityWeatherSpeed: jsonFile["list"][0]["wind"]["speed"].doubleValue,
                                   cityCloudiness: jsonFile["list"][0]["clouds"]["all"].doubleValue)
        
        weatherArray.append(weatherModel)
        completionHandler(weatherArray)
        
    }
}
