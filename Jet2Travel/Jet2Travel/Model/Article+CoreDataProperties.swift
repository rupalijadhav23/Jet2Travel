//
//  Article+CoreDataProperties.swift
//  Jet2Travel
//
//  Created by Tushar Chavan on 16/06/20.
//  Copyright © 2020 Root. All rights reserved.
//
//

import Foundation
import CoreData


extension Article {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Article> {
        return NSFetchRequest<Article>(entityName: "Article")
    }

    @NSManaged public var blogID: Int64
    @NSManaged public var comments: Int64
    @NSManaged public var content: String?
    @NSManaged public var createdAt: NSDate?
    @NSManaged public var likes: Int64
    @NSManaged public var media: NSSet?
    @NSManaged public var author: NSSet?

}

// MARK: Generated accessors for media
extension Article {

    @objc(addMediaObject:)
    @NSManaged public func addToMedia(_ value: Media)

    @objc(removeMediaObject:)
    @NSManaged public func removeFromMedia(_ value: Media)

    @objc(addMedia:)
    @NSManaged public func addToMedia(_ values: NSSet)

    @objc(removeMedia:)
    @NSManaged public func removeFromMedia(_ values: NSSet)

}

// MARK: Generated accessors for author
extension Article {

    @objc(addAuthorObject:)
    @NSManaged public func addToAuthor(_ value: Author)

    @objc(removeAuthorObject:)
    @NSManaged public func removeFromAuthor(_ value: Author)

    @objc(addAuthor:)
    @NSManaged public func addToAuthor(_ values: NSSet)

    @objc(removeAuthor:)
    @NSManaged public func removeFromAuthor(_ values: NSSet)

}
