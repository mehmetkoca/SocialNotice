//
//  AddVC.swift
//  SocialNotice
//
//  Created by Mehmet Koca on 08/08/2017.
//  Copyright © 2017 on3. All rights reserved.
//

import UIKit

class AddVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func returnToFeed(_ sender: Any) {
        performSegue(withIdentifier: "goToFeed", sender: nil)
    }
    
}
