//
//  WelcomeViewController.swift
//  Flash Chat
//
//  This is the welcome view controller - the first thign the user sees
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class WelcomeViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier:  "goToChat", sender: nil)
//            Timer.scheduledTimer(withTimeInterval: 2, repeats: false, block: { (timer) in
//
//            })
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
