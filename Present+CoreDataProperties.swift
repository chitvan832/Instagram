//
//  Present+CoreDataProperties.swift
//  Instagram
//
//  Created by Sierra 4 on 14/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Present {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Present> {
        return NSFetchRequest<Present>(entityName: "Present");
    }

    @NSManaged public var profilepic: NSData?
    @NSManaged public var username: String?
    @NSManaged public var postpic: NSData?

}
