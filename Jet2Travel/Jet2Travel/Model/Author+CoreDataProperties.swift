//
//  Author+CoreDataProperties.swift
//  Jet2Travel
//
//  Created by Tushar Chavan on 16/06/20.
//  Copyright © 2020 Root. All rights reserved.
//
//

import Foundation
import CoreData


extension Author {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Author> {
        return NSFetchRequest<Author>(entityName: "Author")
    }

    @NSManaged public var about: String?
    @NSManaged public var avatar: URL?
    @NSManaged public var blogID: Int64
    @NSManaged public var city: String?
    @NSManaged public var createdAt: NSDate?
    @NSManaged public var designation: String?
    @NSManaged public var lastName: String?
    @NSManaged public var authorName: String?
    @NSManaged public var authorID: Int64
    @NSManaged public var articleDetail: Article?

}
