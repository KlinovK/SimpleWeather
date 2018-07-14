//
//  Location.swift
//  SimpleWeather
//
//  Created by Константин Клинов on 7/14/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init (){}

    var latitude: Double!
    var longitude: Double!
    
}
