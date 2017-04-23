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
        self.weatherListTableView.register(UITableViewCell.self, forCellReuseIdentifier: "identifier")
    }
    
    fileprivate func configureNavigationBar() {
        self.title = "Weather in London"
    }

}

extension WeatherListDefaultViewController: WeatherListView {
    
    func displayWeatherConditions(withWeatherViewModel viewModel: WeatherViewModel) {
        
        self.viewModel = viewModel
        self.weatherListTableView.reloadData()
    }
    
    func displayError() {
        
    }
}
extension WeatherListDefaultViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        guard let viewModel = self.viewModel else { return }
        
        cell.textLabel?.text = viewModel.cityName
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         guard let viewModel = self.viewModel else { return }
        
        print("Selecting city with id \(viewModel.cityId)")
    }
    
}

extension WeatherListDefaultViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return self.weatherListTableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath)
    }
}


