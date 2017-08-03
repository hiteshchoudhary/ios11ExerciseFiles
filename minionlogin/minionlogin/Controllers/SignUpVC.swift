//
//  SignUpVC.swift
//  minionlogin
//
//  Created by studio on 29/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class SignUpVC: UIViewController {

    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginTapped(_ sender: Any) {
        
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        //displayPopUp(title: "Test", message: "test was success")
        
        if email.text == "" || password.text == "" {
            displayPopUp(title: "Missing INFO", message: "No fields can be empty")
        } else {
            //create user
            Auth.auth().createUser(withEmail: email.text!, password: password.text!, completion: { (user, error) in
                if error != nil {
                    if let myErr = error?.localizedDescription {
                        self.displayPopUp(title: "Error", message: myErr)
                    }
                } else {
                    //print(user)
                    //Enter user in DB as well
                    
                    Database.database().reference().child("users").child(user!.uid).child("email").setValue(self.email.text!)
                    
                    
                    self.displayPopUp(title: "Success", message: "Now, you can login")
                }
            })
        }
        
        
    }
    
    
    func displayPopUp(title: String, message: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    

}








