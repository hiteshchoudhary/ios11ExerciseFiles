//
//  Course.swift
//  NewCourseBook
//
//  Created by studio on 27/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import Foundation
import RealmSwift

class Course: Object {
    @objc dynamic var name = ""
    @objc dynamic var email = ""
    @objc dynamic var price = ""
    
    @objc dynamic var imageNSData: NSData?
    
}
