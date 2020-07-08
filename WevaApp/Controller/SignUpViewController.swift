//
//  SignUpViewController.swift
//  WevaApp
//
//  Created by Daniel Richards on 21/12/2019.
//  Copyright © 2019 Daniel Richards. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func createNewUser(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if let e = error {
                print("Error\(e)")
            } else {
                self.performSegue(withIdentifier: "fromSignUpToWeather", sender: self)}
            }
        }
    }

    
}
