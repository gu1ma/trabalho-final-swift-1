//
//  RegisterViewController.swift
//  trabalho_final
//
//  Created by Gabriel Guimarães on 04/08/19.
//  Copyright © 2019 Gabriel Guimarães. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController
{
    @IBOutlet var registerNameField: UITextField!
    @IBOutlet var registerEmailField: UITextField!
    @IBOutlet var registerPasswordField: UITextField!
    
    @IBAction func cadastrar()
    {
        if( registerNameField.text != "" && registerEmailField.text != "" && registerPasswordField.text != "")
        {
             print("register name: \(registerNameField.text), register email: \(registerEmailField.text), register password: \(registerPasswordField.text)")
        }
    }
}
