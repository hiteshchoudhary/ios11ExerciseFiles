//
//  ViewController.swift
//  LightOut
//
//  Created by studio on 02/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func lightsoutTapped(_ sender: Any) {
        
        self.view.backgroundColor = UIColor.black
        
    }
    

    @IBAction func lightsInTapped(_ sender: Any) {
        self.view.backgroundColor = UIColor.white
    }
    
}












