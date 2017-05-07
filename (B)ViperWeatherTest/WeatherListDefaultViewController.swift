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
    fileprivate var viewModel: WeatherListViewModel?
    fileprivate var weatherModelForDetail: Weather?
    @IBOutlet weak var weatherListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.loadData()
        self.configureTableView()
        self.configureNavigationBar()
        
       
    }
    
    // MARK: - Private
    fileprivate func configureTableView() {
        self.weatherListTableView.delegate = self
        self.weatherListTableView.dataSource = self
        self.registerNibs()
    }
    
    fileprivate func registerNibs() {
       self.weatherListTableView.register(UINib(nibName: "WeatherListTableViewCell", bundle: nil), forCellReuseIdentifier: "identifier")
    }
    
    fileprivate func configureNavigationBar() {
        self.title = "Weather in London"
    }

}

extension WeatherListDefaultViewController: WeatherListView {
    
    func displayWeatherConditions(withWeatherViewModel viewModel: WeatherListViewModel) {
        
        self.viewModel = viewModel
        self.weatherListTableView.reloadData()
    }
    
    func displayError() {
        
    }
    
    func injectWeatherModelForRouter(weatherModel: Weather) {
        
        self.weatherModelForDetail = weatherModel
        
    }
    
   
}
extension WeatherListDefaultViewController: UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let weatherModelForDetail = self.weatherModelForDetail else {return}
        
        
        
    }
    
}

extension WeatherListDefaultViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel?.weatherListviewModel.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let weatherModel = viewModel?.weatherListviewModel[indexPath.row]
        
        let cell : WeatherListTableViewCell = (self.weatherListTableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath) as? WeatherListTableViewCell)!
        
        cell.cityNameLabel.text = weatherModel?.cityName
        if let temperature = weatherModel?.cityWeatherTemperature {
            cell.cityTemperatureLabel.text = String(temperature)
        }
        cell.cityWeatherDescriptionLabel.text = weatherModel?.cityWeatherTypeDescription
        return cell
    }
}
