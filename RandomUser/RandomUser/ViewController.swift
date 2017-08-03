//
//  ViewController.swift
//  RandomUser
//
//  Created by studio on 28/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var firstname = ""
        var city = ""
        var gender = ""
        var phone = ""
        var email = ""
    var thumb = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = "https://randomuser.me/api"
        
        
        
        Alamofire.request(myURL).responseJSON { (response) in
//                    print("##############")
//                    print(response.request)
//                    print("##############")
//                    print(response.response)
//                    print("##############")
//                    print(response.data)
//                    print("##############")
//                    print(response.result)
        
//                    if let JSON = response.result.value {
//                        print("##############")
//                        print("\(JSON)")
//
//
//                    }
        
//        print(response)
//
//        let result = response.result
//
//
//        print(result.value)
        
       
        let result = response.result
            //print(result)
            
            if let dict = result.value as? Dictionary<String, AnyObject>{
                //print(dict)
                if let innerDictR = (dict["results"] as! NSArray)[0] as? Dictionary<String, AnyObject>{
                    //print(innerDictR)
                    if let webGender = innerDictR["gender"] as? String {
                        self.gender = webGender
                        print(self.gender)
                    }
                }
            }
            
            if let dict = result.value as? Dictionary<String, AnyObject>{
                if let myNewDict = (dict["results"] as! NSArray)[0] as? Dictionary<String, AnyObject>{
                    if let webPhone = myNewDict["phone"] as? String {
                        self.phone = webPhone
                        print(self.phone)
                    }
                }
            }
            
            if let dict = result.value as? Dictionary<String, AnyObject>{
                if let myNewDict = (dict["results"] as! NSArray)[0] as? Dictionary<String, AnyObject>{
                    if let name = myNewDict["name"] as? Dictionary<String, AnyObject>{
                        if let webFirst = name["first"] as? String {
                            self.firstname = webFirst
                            print(self.firstname)
                        }
                    }
                }
            }
            
            if let dict = result.value as? Dictionary<String, AnyObject>{
                if let myNewDict = (dict["results"] as! NSArray)[0] as? Dictionary<String, AnyObject>{
                    if let photo = myNewDict["picture"] as? Dictionary<String, AnyObject>{
                        if let webthumb = photo["large"] as? String {
                            self.thumb = webthumb
                            print(self.thumb)
                        }
                    }
                }
            }
            
            if let url = URL(string: self.thumb) {
                if let data = NSData(contentsOf: url) {
                    self.imageView.image = UIImage(data: data as Data)
                }
            }
            
            
            
    }
    
}









}







