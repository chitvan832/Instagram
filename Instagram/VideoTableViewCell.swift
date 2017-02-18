//
//  VideoTableViewCell.swift
//  Instagram
//
//  Created by Sierra 4 on 16/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import Kingfisher
class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var imgProfilePic: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var lblCommentUserName: UILabel!
    @IBOutlet weak var lblCaption: UILabel!
    
    var data : cellData?
        {
        didSet{
            updateUI()
        }
    }
    
    fileprivate func updateUI(){
        lblUserName.text = data?.lblUserName
        lblCommentUserName.text = data?.lblUserName
        imgProfilePic.kf.setImage(with: data?.imgProfilePic)
        lblCaption.text = data?.caption
        
    }

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgProfilePic.layer.cornerRadius = CGFloat(self.imgProfilePic.frame.size.width/2.0)

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
