//
//  CurrentWeather.swift
//  SimpleWeather
//
//  Created by Константин Клинов on 7/14/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import Foundation

class CurrenWeather{
    private var _cityName: String!
    private var _date: String!
    private var _weatherType: String!
    private var _currentTemp: Double!
   

    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete){
        let url = URL(string: CURRENT_WEATHER_URL)!

        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let responseData = data {
                do {
                    let json = try
                    JSONSerialization.jsonObject(with: responseData, options: JSONSerialization.ReadingOptions.allowFragments)
                    print(json)
                } catch {
                    print("Could Not Searialize!")
                }
            }
        } .resume()
    }
    
}
