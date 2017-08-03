//
//  DetailVC.swift
//  TableViewDemo
//
//  Created by studio on 10/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var heroLabel: UILabel!
    var heroName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heroLabel.text = "\(heroName)"
        
        if heroName == "Hulk" {
            self.view.backgroundColor = UIColor.green
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
