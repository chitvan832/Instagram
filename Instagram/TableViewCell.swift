//
//  TableViewCell.swift
//  Instagram
//
//  Created by Sierra 4 on 13/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import Kingfisher
import Spring

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgProfilePic: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var imgPostPic: UIImageView!
    @IBOutlet weak var lblUserNameCommentSection: UILabel!

    @IBOutlet weak var centerHeart: SpringImageView!
    @IBOutlet weak var btnHeartLIke: SpringButton!
    @IBOutlet weak var lblCaption: UILabel!
    
    var buttonState :Bool = false
    var data : cellData?
        {
        didSet{
            updateUI()
        }
    }
    
    fileprivate func updateUI(){
        lblUserName.text = data?.lblUserName
        lblUserNameCommentSection.text = data?.lblUserName
        imgProfilePic.kf.setImage(with: data?.imgProfilePic)
        imgPostPic.kf.setImage(with: data?.imgPost)
        lblCaption.text = data?.caption
        
    }

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgProfilePic.layer.cornerRadius = CGFloat(self.imgProfilePic.frame.size.width/2.0)
        
        // Initialization code
    }

    @IBAction func btnHeartLikeAction(_ sender: SpringButton) {
    
       // tapped(btnHeartLIke as DOFavoriteButton)
    // btnHeartLIke.layer.
        
        if buttonState{
            buttonState = false // unselected
        // delselect animation
            btnHeartLIke.tintColor = UIColor.gray
        }
        else{
            btnHeartLIke.animation = "pop"
            btnHeartLIke.duration = 1.0
            btnHeartLIke.curve = "easeIn"
            btnHeartLIke.animate()
            btnHeartLIke.tintColor = UIColor.red
            buttonState = true
        }
    }
    
    @IBAction func btnActionForHeart(_ sender: UIButton) {
       
        
            UIView.animate(withDuration: 1, animations: {
                self.centerHeart.animation = "pop"
                self.centerHeart.duration = 1.0
                self.centerHeart.animate()
                
            }) {(true) in
                UIView.animate(withDuration: 0){
                self.centerHeart.isHidden = true
                }
        }
        }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
  }
