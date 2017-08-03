//
//  LoginVC.swift
//  minionlogin
//
//  Created by studio on 29/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginVC: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBOutlet weak var loginTapped: UIButton!
    
    @IBAction func loginTapped(_ sender: Any) {
        
        if email.text == "" || password.text == "" {
            displayPopUp(title: "Missing INFO", message: "No fields can be empty")
        } else {
            //sign in
            Auth.auth().signIn(withEmail: email.text!, password: password.text!, completion: { (user, error) in
                if error != nil {
                    if let myErr = error?.localizedDescription {
                        self.displayPopUp(title: "ERROR", message: myErr)
                    }
                } else {
                    //perform a login
                    print("##############")
                    //print(user)
                    self.performSegue(withIdentifier: "successsegue", sender: nil)
                }
            })
        }
        
    }
    
    
    
    
    
    func displayPopUp(title: String, message: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    //this code was added for git hub section
    
    func helloGit() {
        print("Hello Git")
    }
    
    
    
}

