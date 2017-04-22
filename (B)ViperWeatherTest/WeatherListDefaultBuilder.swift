//
//  WeatherListDefaultBuilder.swift
//  (B)ViperWeatherTest
//
//  Created by Michel Goñi on 22/4/17.
//  Copyright © 2017 Michel Goñi. All rights reserved.
//

import UIKit

final class WeatherListDefaultBuilder: WeatherListBuilder {
    
    var router: WeatherListRouter?
    var interactorManager: WeatherListInteractorManager?
    var presenter: WeatherListPresenter?
    var view : WeatherListView?
    
    
    // Mark: - WeatherListBuuilder protocol
    func buildWeatherListModule() -> UIViewController? {
        self.buildView()
        self.buildRouter()
        self.buildPresenter()
        
        return self.view as? UIViewController
    }
    
    
    //MARK: - Private
    
    
    fileprivate func buildView() {
        
        self.view = WeatherListDefaultViewController()
    }
    
   fileprivate func buildRouter()  {
        guard let view = self.view as? UIViewController else {
        assert(false, "View has to be a UIViewController")
        return
        }
    
        self.router = WeatherListDefaultRouter(viewcontroller: view)
    }
    
    fileprivate func buildPresenter(){
        
        guard let interactorManager = self.interactorManager,
            let router = self.router,
            let view = self.view
            else {
                assert(false, "View has to be a UIViewController")
                return
        }
        
        self.presenter = WeatherListDefaultPresenter(interactorManager: interactorManager, router: router, view: view)
    }
    fileprivate func buidlCircularDependencies() {
        guard let presenter = self.presenter, let view = self.view as? WeatherListDefaultViewController else {
            return
        }
        view.presenter = presenter
    }
}
