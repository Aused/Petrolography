//
//  signInVC.swift
//  Petrolography
//
//  Created by Edward Sonzay on 1/5/19.
//  Copyright © 2019 Edward Sonzay. All rights reserved.
//

import UIKit

class signInVC: UIViewController {
   
    // text fields
    
    @IBOutlet weak var userTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    // buttons
    
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var forgotBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // clicked signin button
    
    @IBAction func signInBtn_click(_ sender: Any) {
            print("sign in pressed!!")
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
