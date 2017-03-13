//
//  File.swift
//  ObjectMapper with Alamofire
//
//  Created by Silicon Orchard Ltd on 3/13/17.
//  Copyright © 2017 Nahin Ahmed. All rights reserved.
//

import Foundation
import ObjectMapper


class WeatherResponse: Mappable {

    var location: String?
    var threeDayForecast: [Forecast]?
    
    required init?(map: Map){}
    
    func mapping(map: Map){
    
        location <- map["location"]
        threeDayForecast <- map["three_day_forecast"]
    
    }
}


class Forecast: Mappable {
    var day: String?
    var temperature: Int?
    var conditions: String?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        day <- map["day"]
        temperature <- map["temperature"]
        conditions <- map["conditions"]
    }
}
