//
//  ViewController.swift
//  SimpleWeather
//
//  Created by Константин Клинов on 7/13/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var currentWeatherLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var currentWeatherImg: UIImageView!
    @IBOutlet weak var currentWeatherTypeLbl: UILabel!
    
    
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    var currentWEather: CurrenWeather!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        currentWEather = CurrenWeather()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startMonitoringSignificantLocationChanges()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        locationAuthStatus()

    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        locationAuthStatus()
    }


    func locationAuthStatus(){
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            currentLocation = locationManager.location
            Location.sharedInstance.latitude = currentLocation.coordinate.latitude
            Location.sharedInstance.longitude = currentLocation.coordinate.longitude
            
            currentWEather.downloadWeatherDetails {
                DispatchQueue.main.async {
                    self.updateMainUI()
                }
            }
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    func updateMainUI(){
        dateLbl.text = currentWEather.date
        currentWeatherLbl.text = "\(currentWEather.currentTemp)"
        currentWeatherTypeLbl.text = currentWEather.weatherType
        locationLbl.text = currentWEather.cityName
        currentWeatherImg.image = UIImage(named: currentWEather.weatherType)
    }
    
}

