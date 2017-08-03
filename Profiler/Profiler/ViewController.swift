//
//  ViewController.swift
//  Profiler
//
//  Created by studio on 29/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    let myURL = "https://randomuser.me/api"
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var imageUrl = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func GetPersonTapped(_ sender: Any) {
        Alamofire.request(myURL).responseJSON { (response) in
            let result = response.result
            //print(result)
            
            // check for SUCCESS: True
            
            if let dict = result.value as? Dictionary<String, AnyObject>{
                if let myNewDict = (dict["results"] as! NSArray)[0] as? Dictionary<String, AnyObject>{
                    if let name = myNewDict["name"] as? Dictionary<String, AnyObject>{
                        if let firstname = name["first"] as? String {
                            self.nameLabel.text = firstname
                        }
                    }
                }
            }
            
            //Get image
            
            if let dict = result.value as? Dictionary<String, AnyObject>{
                if let myNewDict = (dict["results"] as! NSArray)[0] as? Dictionary<String, AnyObject>{
                    if let photo = myNewDict["picture"] as? Dictionary<String, AnyObject>{
                        if let webpic = photo["large"] as? String {
                            self.imageUrl = webpic
                            print(self.imageUrl)
                        }
                    }
                }
            }
            
            //Set an image
            
            if let url = URL(string: self.imageUrl){
                if let data = NSData(contentsOf: url) {
                    self.imageView.image = UIImage(data: data as Data)
                    self.imageView.backgroundColor = UIColor.clear
                }
            }
            
            
        }
    }
    


}
















