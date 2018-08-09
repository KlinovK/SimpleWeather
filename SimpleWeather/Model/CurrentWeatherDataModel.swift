//
//  CurrentWeather.swift
//  SimpleWeather
//
//  Created by Константин Клинов on 7/14/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class CurrentWeatherDataModel {
    
    //Declare your model variables here
    
    var temperature : Int = 0
    var condition : Int = 0
    var city : String = ""
    var weatherIconName : String = ""
    var date: String: = ""
    
    //This method turns a condition code into the name of the weather condition image
    
    func updateWeatherIcon(condition: Int) -> String {
        
        switch (condition) {
            
        case 0...300 :
            return "Rainy"
            
        case 301...500 :
            return "Rainy"
            
        case 501...600 :
            return "Snow"
            
        case 601...700 :
            return "Snow"
            
        case 701...771 :
            return "Snow"
            
        case 772...799 :
            return "Snow"
            
        case 800 :
            return "Sunny"
            
        case 801...804 :
            return "Snow"
            
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

