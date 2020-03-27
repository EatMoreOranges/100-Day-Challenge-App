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
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
//         Check User Default: Is the user already logged in?
//         If "userLoggedIn" is true (user is logged in) then perform transition
                if UserDefaults.standard.bool(forKey: "userLoggedIn") == true {self.performSegue(withIdentifier: "onLogin", sender: self)}
    }
    
    
    //might not be necessary
//    @IBAction func toSignUp(_ sender: Any) {
//        self.performSegue(withIdentifier: "toSignUp", sender: self)
//    }
    
    
    
    @IBAction func onLoginButton(_ sender: Any) {
        let username = usernameField.text! //FIND OUT WHAT THIS DOES --- this "!" resolved so many errors (Jesus came through [hands up in praise])
        let pass = passwordField.text!
//
        if (usernameField != nil && passwordField != nil){
//          The Parse login line of code was not really the same in documentation
//          This is the correct line of code for loging in

            PFUser.logInWithUsername(inBackground: username , password: pass) { (user, error) in

                if user != nil {
                    //everytime a user logs in a variable called "userLoggerIn" is created and set to true
                    UserDefaults.standard.set(true, forKey: "userLoggedIn")
                    self.performSegue(withIdentifier: "onLogin", sender: nil)

                } else {print("Error:\(error)")}
            }
            
        } else {print("self.passwordField.backgroundColor = UIColor.brown")}
        
    }
    

}
