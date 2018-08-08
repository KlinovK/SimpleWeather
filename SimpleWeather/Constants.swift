//
//  Constants.swift
//  SimpleWeather
//
//  Created by Константин Клинов on 7/14/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import Foundation
import CoreLocation

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "https://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=c4cefdc144911e2d206d3bc5e9f67c06"




