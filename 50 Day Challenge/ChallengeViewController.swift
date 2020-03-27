//
//  ChallengeViewController.swift
//  50 Day Challenge
//
//  Created by EatMoreOranges on 3/24/20.
//  Copyright © 2020 EatMoreOranges. All rights reserved.
//

import UIKit
import Parse

class ChallengeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onLogOut(_ sender: Any) {
        PFUser.logOut() // This makes PFUser.current() become nill
        if PFUser.current() == nil{
            UserDefaults.standard.set(false, forKey: "userLoggedIn")
        }
        
    }
    
}
