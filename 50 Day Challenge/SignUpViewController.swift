//
//  SignUpViewController.swift
//  50 Day Challenge
//
//  Created by EatMoreOranges on 3/21/20.
//  Copyright © 2020 EatMoreOranges. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordConfimationField: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onSignUpButton(_ sender: Any) {
        
        if (passwordField.text == passwordConfimationField.text){
            print("lets sign up")
        }else{
            print("Passwords do not match")
        }
    }
    
 

}
