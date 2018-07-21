//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase
import ProgressHUD
import SVProgressHUD
class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        

        
        //TODO: Set up a new user on our Firbase database
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!, completion: { ( user, error) in
            SVProgressHUD.show()
            if error != nil {
                print(error!)
                SVProgressHUD.dismiss()
                ProgressHUD.showError("Failed")
            } else {
                print("Suceessful")
                print(user!)
                SVProgressHUD.dismiss()
                ProgressHUD.showSuccess("User Registered")
                //Take user to Chat
                self.performSegue(withIdentifier: "goToChat", sender: self)
                
                
            }
        })
        

        
        
    } 
    
    
}
