//
//  ViewController.swift
//  o_toolkit
//
//  Created by Student on 2/18/17.
//  Copyright © 2017 wow. All rights reserved.
//

import UIKit
import FirebaseDatabase
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GMSServices.provideAPIKey("AIzaSyDb-WaJ15vnHpPKUN9ggEzJPZELKVmqmC0")
        print("Google Maps API Works!")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginButton(_ sender: Any) {

        if (nameTextField.text == "") {
            logoLabel.text = "sign up";
            
            var ref: FIRDatabaseReference!
            ref = FIRDatabase.database().reference()
            ref.child("users").child("1").setValue(["username": "paul"])
            ref.child("users/adwa/username").setValue("eeeexxx")
            
            //DONT DO THIS FOR 
            //TRANSITIONS THIS IS ASS. JUST LEARN
            //HOW TO USE SEGUES AND SUCCEED WHERE
            //I HAVE FAILED
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let SignUpController = storyBoard.instantiateViewController(withIdentifier: "signup") as UIViewController
            
            self.present(SignUpController, animated:true, completion:nil)


        } else {
            logoLabel.text = "sign in";
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

