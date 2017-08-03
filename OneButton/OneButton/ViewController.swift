//
//  ViewController.swift
//  OneButton
//
//  Created by studio on 03/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonState = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var buttonText: UIButton!
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        if buttonState == true {
            self.view.backgroundColor = UIColor.black
            buttonText.setTitle("Lights IN", for: .normal)
            buttonState = false
        } else {
            self.view.backgroundColor = UIColor.white
            buttonText.setTitle("Lights out", for: .normal)
            buttonState = true
        }
        
    }
    
}












