//
//  PostCell.swift
//  SocialNotice
//
//  Created by Mehmet Koca on 08/08/2017.
//  Copyright © 2017 on3. All rights reserved.
//

import UIKit
import Firebase
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
    
    func configureCell(post: Post, img: UIImage? = nil) {
        self.post = post
        self.caption.text = post.caption
        self.likesLbl.text = "\(post.likes)"
        
        if img != nil {
            self.festImg.image = img
        } else {
            let ref = Storage.storage().reference(forURL: post.imageURL)
            ref.getData(maxSize: 2 * 1024 * 1024, completion: { (data, error) in
                if error != nil {
                    print("MSG: Unable to download image from Firebase")
                } else {
                    print("MSG: Image downloaded from Firebase storage")
                    if let imgData = data {
                        if let img = UIImage(data: imgData) {
                            self.festImg.image = img
                            FeedVC.imageCache.setObject(img, forKey: post.imageURL as NSString)
                        }
                    }
                }
            })
        }
    }

   
    
}
