//
//  CourseCell.swift
//  CourseBook
//
//  Created by studio on 25/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class CourseCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var courseEmail: UILabel!
    @IBOutlet weak var coursePrice: UILabel!
    
    
    func fillCellWithData(course: Course){
        
        courseName.text = course.coursename
        courseEmail.text = course.email
        coursePrice.text = "$ \(course.price)"
        
        // TODO: Set image later
        
        myImage.image = course.courseToImage?.image as? UIImage
        
    }
    

}








