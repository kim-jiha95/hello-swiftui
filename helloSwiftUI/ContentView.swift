//
//  ContentView.swift
//  helloSwiftUI
//
//  Created by Jihaha kim on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Get Coordinates") {
                Task {
                    let geocodingClient = GeocodingClient()
                    let weatherClient = WeatherClient()
                    
                    let location = try! await geocodingClient.coordinateByCity("Houston")
                    let weather = try! await weatherClient.fetchWeather(location: location!)
                    print(weather)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
