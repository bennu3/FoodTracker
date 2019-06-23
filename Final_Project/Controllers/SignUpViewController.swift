//
//  SignUpViewController.swift
//  Final_Project
//
//  Created by Diego Garcia on 6/20/19.
//  Copyright © 2019 Diego Garcia. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
  

}
