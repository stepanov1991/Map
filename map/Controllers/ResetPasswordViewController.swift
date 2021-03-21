//
//  ResetPasswordViewController.swift
//  map
//
//  Created by user on 21.03.2021.
//

import UIKit
import Firebase

class ResetPasswordViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.layer.cornerRadius = emailTextField.frame.height/2
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.gray.cgColor
        
        resetButton.layer.cornerRadius = 25
        resetButton.layer.borderWidth = 2
        resetButton.layer.borderColor = UIColor.systemIndigo.cgColor
      
    }
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        if let email = emailTextField.text {

            Auth.auth().sendPasswordReset(withEmail: email) { (error) in
                if let e = error {
                   print(e)
                }
                let alert = UIAlertController(title: "Reset password", message: "Check your email and reset password", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
                self.present(alert, animated: true)
            }
        }
    }
    



}
