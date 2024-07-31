//
//  Weather.swift
//  helloSwiftUI
//
//  Created by Jihaha kim on 7/31/24.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
}
