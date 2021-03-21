//
//  LoginViewController.swift
//  map
//
//  Created by user on 21.03.2021.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.layer.cornerRadius = emailTextField.frame.height/2
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.gray.cgColor
        
        passwordTextField.layer.cornerRadius = emailTextField.frame.height/2
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.gray.cgColor
        
        loginButton.layer.cornerRadius = 25
        loginButton.layer.borderWidth = 2
        loginButton.layer.borderColor = UIColor.systemIndigo.cgColor
    }
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let e = error {
                    let alert = UIAlertController(title: "Error", message: e.localizedDescription, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
                    self?.present(alert, animated: true)
                }
                else {
                    self?.performSegue(withIdentifier: "LogIn", sender: self)
                }
                
            }
        }
        
    }
    
    
}
