//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase
import SVProgressHUD
import ProgressHUD

class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {
        
        SVProgressHUD.show()
        //TODO: Log in the user
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
                SVProgressHUD.dismiss()
                ProgressHUD.showError("Failed")
            } else {
                print(user!)
                //Take user to Chat
                SVProgressHUD.dismiss()
                ProgressHUD.showSuccess("Successful Login")
                self.performSegue(withIdentifier: "goToChat", sender: self)
                UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
                UserDefaults.standard.synchronize()
            }
        }
        
    }
    


    
}  
