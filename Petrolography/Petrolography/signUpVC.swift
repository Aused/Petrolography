//
//  signUpVC.swift
//  Petrolography
//
//  Created by Edward Sonzay on 1/5/19.
//  Copyright © 2019 Edward Sonzay. All rights reserved.
//


// Puss Puss is the best Puss, I Love Puss!


import UIKit

class signUpVC: UIViewController {

    // OUTLETS
    
    // Scroll View
    @IBOutlet weak var scrollView: UIScrollView!
    var scrollViewHeight : CGFloat = 0
    var keyboard = CGRect()
    
    // Images
    @IBOutlet weak var avaImg: UIImageView!
    
    // Text Fields
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var repeatPasswordTxt: UITextField!
    @IBOutlet weak var fullnameTxt: UITextField!
    @IBOutlet weak var bioTxt: UITextField!
    @IBOutlet weak var webTxt: UITextField!
    
    // Buttons
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // my functions to run
        
        
        // scroll view frame size
        scrollView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        scrollView.contentSize.height = self.view.frame.height
        scrollViewHeight = scrollView.frame.size.height
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
        let hideTap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboardTap))
        hideTap.numberOfTapsRequired = 1
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(hideTap)
        
    }
    
    // hide keyboard if tapped
    @objc func hideKeyboardTap(recognizer:UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    // show keyboard
    @objc func keyboardWillShow(_ notification: Notification) {
        
        // define keyboard size
        keyboard = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey]! as AnyObject).cgRectValue
        
        // move up UI
        UIView.animate(withDuration: (0.4)) {
            self.scrollView.frame.size.height = self.scrollViewHeight - self.keyboard.height
        }
    }
    
    // hide keyboard
    @objc func keyboardWillHide(_ notification: Notification){
        
        // move down UI
        UIView.animate(withDuration: 0.4) {
            self.scrollView.frame.size.height = self.view.frame.height
        }
        
    }
    
    
    
    // Clicked signup
    @IBAction func signUpBtn_click(_ sender: Any) {
        print("signup clicked!!")
    }
    
    // Clicked cancel
    @IBAction func cancelBtn_click(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
