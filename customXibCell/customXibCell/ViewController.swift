//
//  ViewController.swift
//  customXibCell
//
//  Created by studio on 14/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    let photos = ["bird", "bund", "chinatemple", "mario", "martialarts", "money", "parrot", "surf", "taj"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        
        cell.myLeftLabel.text = photos[indexPath.row]
        cell.myLeftLabel.text = photos[indexPath.row]
        return cell
    }


}

