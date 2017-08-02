//
//  SignInVC.swift
//  SocialNotice
//
//  Created by Mehmet Koca on 02/08/2017.
//  Copyright © 2017 on3. All rights reserved.
//

import UIKit
import Firebase

class SignInVC: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var pwdField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    
    
    @IBAction func signInTapped(_ sender: Any) {
        if let email = emailField.text, let pwd = pwdField.text {
            
        }
    }

}
