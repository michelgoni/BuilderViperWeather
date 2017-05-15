//
//  WeatherDetailViewController.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 8/5/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import UIKit

class WeatherDetailViewController: UIViewController {
    
    var presenter: WeatherDetailPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.presenter?.loadData()
    }


}

extension WeatherDetailViewController: WeatherDetailView {
    
    func displayWeatherDetail(withWeatherDetailModel weatherDetailModel: WeatherDetailViewModel) {
        
        print(weatherDetailModel)
    }
    
    func displayErrorScreen() {
        
    }
}
