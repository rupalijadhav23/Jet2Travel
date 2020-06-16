//
//  Media+CoreDataProperties.swift
//  Jet2Travel
//
//  Created by Tushar Chavan on 16/06/20.
//  Copyright © 2020 Root. All rights reserved.
//
//

import Foundation
import CoreData


extension Media {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Media> {
        return NSFetchRequest<Media>(entityName: "Media")
    }

    @NSManaged public var blogID: Int64
    @NSManaged public var createdAt: NSDate?
    @NSManaged public var imageURL: URL?
    @NSManaged public var mediaID: Int64
    @NSManaged public var title: String?
    @NSManaged public var url: URL?
    @NSManaged public var articleDetails: Article?

}
