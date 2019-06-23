//
//  LoginViewController.swift
//  Final_Project
//
//  Created by Diego Garcia on 6/20/19.
//  Copyright © 2019 Diego Garcia. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerForNotifications()

    }
    private func registerForNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    
    @objc private func keyboardWillShow(_ notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
        
    }
    
    @objc private func keyboardWillHide(_ notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    
    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func fbSignUpButtonPressed(_ sender: UIButton) {
    }
    @IBAction func ggButtonPressed(_ sender: UIButton) {
    }
    @IBAction func igButonPressed(_ sender: UIButton) {
    }
    
    
}
