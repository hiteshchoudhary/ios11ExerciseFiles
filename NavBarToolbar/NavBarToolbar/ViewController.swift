//
//  ViewController.swift
//  NavBarToolbar
//
//  Created by studio on 08/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var number: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderMoved(_ sender: Any) {
        number.text = "\(slider.value)"
    }
    


}

