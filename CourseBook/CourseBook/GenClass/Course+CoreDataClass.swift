//
//  Course+CoreDataClass.swift
//  CourseBook
//
//  Created by studio on 24/07/17.
//  Copyright © 2017 studio. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Course)
public class Course: NSManagedObject {

    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.publisheddate = NSDate()
    }
    
}
