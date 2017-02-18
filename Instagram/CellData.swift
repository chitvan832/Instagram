//
//  CellData.swift
//  Instagram
//
//  Created by Sierra 4 on 15/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import Foundation

class cellData{
    
    //let cellType : String!
    let lblUserName : String!
    let imgProfilePic : URL!
    var imgPost : URL!
    var videoView : String!
    var celltype : String!
    let caption : String!
    init(type :  String? , userName : String? , profilePic : URL? , post : URL? , caption : String?) {
        self.lblUserName = userName
        self.imgProfilePic = profilePic
       self.imgPost = post
        self.celltype = type
        self.caption = caption
        /* if celltype == "image"
        {
            self.imgPost = post
        }
        else
        {
            self.videoView = String(describing: post)
        }*/
}
}
