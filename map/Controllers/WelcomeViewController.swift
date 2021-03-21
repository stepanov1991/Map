//
//  ViewController.swift
//  map
//
//  Created by user on 21.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.layer.cornerRadius = 25
        loginButton.layer.cornerRadius = 25
        loginButton.layer.borderWidth = 2
        registerButton.layer.borderWidth = 2
        loginButton.layer.borderColor = UIColor.systemIndigo.cgColor
        registerButton.layer.borderColor = UIColor.systemIndigo.cgColor
       
    }


}

