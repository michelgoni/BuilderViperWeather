//
//  WeatherListDefaultViewController.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 22/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import UIKit

class WeatherListDefaultViewController: UIViewController {
    
    var presenter: WeatherListPresenter?
    fileprivate var viewModel: WeatherViewModel?
    @IBOutlet weak var weatherListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}

extension WeatherListDefaultViewController: WeatherListView {
    
    func displayWeatherConditions(withWeatherViewModel viewModel: WeatherViewModel) {
        
    }
    
    func displayError() {
        
    }
}

extension WeatherListDefaultViewController: UITableViewDataSource {
    
    
}

extension WeatherListDefaultViewController: UITableViewDelegate{
    
    
}
