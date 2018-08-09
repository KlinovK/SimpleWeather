//
//  ModelWeather.swift
//  SimpleWeather
//
//  Created by Константин Клинов on 8/9/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import Foundation

class ModelWeather {
    //Declare your model variables here
    
    var temperature : Int = 0
    var condition : Int = 0
    var city : String = ""
    var weatherIconName : String = ""
    fileprivate var _date: String!
    var weatherType: String = ""
    
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
    
    
    
    //This method turns a condition code into the name of the weather condition image
    
    func updateWeatherIcon(condition: Int) -> String {
        
        switch (condition) {
            
        case 0...300 :
            return "Lightning"
            
        case 301...500 :
            return "Rainy"
            
        case 501...600 :
            return "Rainy"
            
        case 601...700 :
            return "Snow"
            
        case 701...771 :
            return "Rainy"
            
        case 772...799 :
            return "Rainy"
            
        case 800 :
            return "Sunny"
            
        case 801...804 :
            return "Cloudy"
            
        case 900...903, 905...1000  :
            return "Rainy"
            
        case 903 :
            return "Snow"
            
        case 904 :
            return "Sunny"
            
        default :
            return "Rainy"
        }
        
    }
}
