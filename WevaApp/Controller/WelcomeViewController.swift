//
//  ViewController.swift
//  WevaApp
//
//  Created by Daniel Richards on 21/12/2019.
//  Copyright © 2019 Daniel Richards. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logInPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLogIn", sender: self)
    }
    
    @IBAction func signInPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSignUp", sender: self)
    }
}

