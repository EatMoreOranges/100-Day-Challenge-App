//
//  SignUpViewController.swift
//  50 Day Challenge
//
//  Created by EatMoreOranges on 3/21/20.
//  Copyright © 2020 EatMoreOranges. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordConfimationField: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onSignUpButton(_ sender: Any) {
        if (usernameField != nil && passwordConfimationField != nil && passwordField != nil){
            print("move on 1")
            
            if (passwordField.text == passwordConfimationField.text){
                print("lets sign up")
                
//               Step 1:
                var user = PFUser()
                user.username = usernameField.text
                user.password = passwordField.text
//               Step 2:
                user.signUpInBackground { (Success, Error) in
                    if (Success){
                        self.performSegue(withIdentifier: "onSignUp", sender: self)
                    }
                    
                }
                
            }else{print("Passwords do not match")}
        }else{print("stop")}
    }
    
//    @IBAction func toLogin(_ sender: Any) {
//        self.performSegue(withIdentifier: "toLogin", sender: self)
//    }
//
   
    
}


//Parse documentaion
//https://docs.parseplatform.org/ios/guide/#signing-up

//parse-dashboard --appId 100DayChallenge --masterKey myMasterKey --serverURL "http://challenge100days.herokuapp.com/parse

//
//git remote add origin https://github.com/EatMoreOranges/100-Day-Challenge-App.git
//git push -u origin master
