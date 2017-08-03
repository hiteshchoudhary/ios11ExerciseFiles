//
//  Image+CoreDataProperties.swift
//  CourseBook
//
//  Created by studio on 24/07/17.
//  Copyright © 2017 studio. All rights reserved.
//
//

import Foundation
import CoreData


extension Image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Image> {
        return NSFetchRequest<Image>(entityName: "Image")
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var imageToCourse: Course?
    @NSManaged public var imageToCategory: Category?

}
