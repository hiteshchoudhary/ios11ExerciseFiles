//
//  ViewController.swift
//  ACoffeApp
//
//  Created by studio on 04/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var pricePay: UILabel!
    @IBOutlet weak var errorlabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDIdLoad")
//        inputText.layer.cornerRadius = 15.0
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    @IBAction func priceTapped(_ sender: Any) {
        
        if inputText.text == "" {
            errorlabel.text = "Enter value in box"
        } else {
            let input = Double(inputText.text!)
            pricePay.text = "\(input! * 5) $"
            //line to dismiss keyboard
            view.endEditing(true)
        }
        
    }
    
    


}

