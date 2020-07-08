//
//  WeatherBrain.swift
//  WevaApp
//
//  Created by Daniel Richards on 21/12/2019.
//  Copyright © 2019 Daniel Richards. All rights reserved.
//

import Foundation

let weatherViewController = WeatherViewController()

let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=f2ae8d6f707dc593b01f69b6bbfc201f&units=metric"

func weatherUrl(city: String) {
    let urlString = "\(weatherURL)&q=\(city)"
    performRequest(with: urlString)
}

func performRequest(with urlString: String){
    if let url = URL(string: urlString) {
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            if let e = error {
                print("Error")
            }
            if let safeData = data {
                performRequest(with: url?)
            }
        }
        task.resume()
    }
}


