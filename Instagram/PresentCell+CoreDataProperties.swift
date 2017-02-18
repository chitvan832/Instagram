//
//  PresentCell+CoreDataProperties.swift
//  Instagram
//
//  Created by Sierra 4 on 14/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension PresentCell {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PresentCell> {
        return NSFetchRequest<PresentCell>(entityName: "PresentCell");
    }

    @NSManaged public var profilePic: NSData?
    @NSManaged public var userName: String?
    @NSManaged public var postPic: NSData?
    @NSManaged public var postCaption: String?

}
