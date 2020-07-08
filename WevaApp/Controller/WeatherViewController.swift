//
//  WeatherViewController.swift
//  WevaApp
//
//  Created by Daniel Richards on 21/12/2019.
//  Copyright © 2019 Daniel Richards. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func searchButtonPressed(_ sender: UIButton) {
        if let city = searchTextField.text {
            weatherUrl(city: city)
        }
    }

}
