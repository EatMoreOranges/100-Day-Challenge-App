//
//  LoginViewController.swift
//  50 Day Challenge
//
//  Created by EatMoreOranges on 3/22/20.
//  Copyright © 2020 EatMoreOranges. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func onLoginButton(_ sender: Any) {
        let username = usernameField.text
        let password = passwordField.text
        

//
        if (usernameField != nil && passwordField != nil){
            print("move on 1")
            

            //        the Parse login line of code was not really the same in documentation
//            this did not work:
//            PFUser.logInWithUsername(inBackground: username, password: password){
//        (user, error) in if user != nil {} else {}}
            //        this is the correct line of code for loging in
            PFUser.logInWithUsername(inBackground: "username", password: "password") { (user, error) in
                if user != nil {
                        self.performSegue(withIdentifier: "onLogin", sender: nil)
                    } else {
                        print("Error:\(error)")
                }
            }
        }
        
        
        
        
    }
    

}
