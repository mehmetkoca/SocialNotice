//
//  SignInVC.swift
//  SocialNotice
//
//  Created by Mehmet Koca on 02/08/2017.
//  Copyright © 2017 on3. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

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
   
    func firebaseAuth(_ credential: AuthCredential) {
        Auth.auth().signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("MSG: Unable to authenticate with Firebase - \(error)")
            } else {
                print("MSG: Successfully authenticated with Firebase")
            }
        })
    }
    
    
    @IBAction func signInTapped(_ sender: Any) {
        if let email = emailField.text, let pwd = pwdField.text {
            Auth.auth().signIn(withEmail: email, password: pwd, completion: {(user , error) in
                if error == nil {
                    print("MSG: Email user authenticated with Firebase")
                } else {
                    Auth.auth().createUser(withEmail: email, password: pwd, completion: { (user, error) in
                        if error != nil {
                            print("MSG: Unable to authenticate with Firebase using email")
                        } else {
                            print("MSG: Successfully authenticated with Firebase")
                        }
                    })
                }
            
            })
        }
    }

}
