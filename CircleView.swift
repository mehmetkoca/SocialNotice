//
//  CircleView.swift
//  SocialNotice
//
//  Created by Mehmet Koca on 07/08/2017.
//  Copyright © 2017 on3. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
    
    
    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
    }
}
