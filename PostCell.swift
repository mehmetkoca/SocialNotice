//
//  PostCell.swift
//  SocialNotice
//
//  Created by Mehmet Koca on 08/08/2017.
//  Copyright © 2017 on3. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var festImg: UIImageView!
    @IBOutlet weak var festName: UILabel!
    @IBOutlet weak var caption: UILabel!
    @IBOutlet weak var likesLbl: UILabel!
    
    var post: Post!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(post: Post) {
        self.post = post
        self.caption.text = post.caption
        self.likesLbl.text = "\(post.likes)"
    }

   
    
}
