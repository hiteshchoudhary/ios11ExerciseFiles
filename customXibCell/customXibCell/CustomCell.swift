//
//  CustomCell.swift
//  customXibCell
//
//  Created by studio on 14/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    
    @IBOutlet weak var myLeftLabel: UILabel!
    
    @IBOutlet weak var myRightLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
