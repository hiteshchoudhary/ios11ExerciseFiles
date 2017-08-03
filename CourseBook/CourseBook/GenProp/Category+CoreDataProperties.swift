//
//  Category+CoreDataProperties.swift
//  CourseBook
//
//  Created by studio on 24/07/17.
//  Copyright © 2017 studio. All rights reserved.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var name: String?
    @NSManaged public var categoryToCourse: Course?
    @NSManaged public var categoryToImage: Image?

}
