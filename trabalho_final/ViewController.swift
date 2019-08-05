//
//  ViewController.swift
//  trabalho_final
//
//  Created by Gabriel Guimarães on 03/08/19.
//  Copyright © 2019 Gabriel Guimarães. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet var loginUsernameField: UITextField!
    @IBOutlet var loginPasswordField: UITextField!
    
    @IBAction func login()
    {
        if(loginUsernameField.text != "" && loginPasswordField.text != "")
        {
            print("username: \(loginUsernameField.text) and password: \(loginPasswordField.text)")
        }
    }
    
}

