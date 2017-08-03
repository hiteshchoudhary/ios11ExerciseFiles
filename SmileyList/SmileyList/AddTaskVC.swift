//
//  AddTaskVC.swift
//  SmileyList
//
//  Created by studio on 21/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class AddTaskVC: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var needSmiley: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func saveTapped(_ sender: Any) {
        
        let guest = UIApplication.shared.delegate as! AppDelegate
        
        let context = guest.persistentContainer.viewContext
        
        
        let task = Task(context: context)
        
        if let name = textField.text {
            task.name = name
        }
        
        task.smiley = needSmiley.isOn
        
        guest.saveContext()
        
        navigationController?.popViewController(animated: true)
    }
    
    
    
}






















