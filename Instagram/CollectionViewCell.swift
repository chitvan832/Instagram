//
//  CollectionViewCell.swift
//  Instagram
//
//  Created by Sierra 4 on 13/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
   
      override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       // imageView.layer.borderColor = UIColor.blue.cgColor
        
    }
    
    override var bounds : CGRect {
        didSet {
            self.layoutIfNeeded()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.makeItCircle()
    }
    
    func makeItCircle() {
        self.imageView.layer.masksToBounds = true
        self.imageView.layer.cornerRadius  = CGFloat(roundf(Float(self.imageView.frame.size.width/2.0)))
        
    }

}
