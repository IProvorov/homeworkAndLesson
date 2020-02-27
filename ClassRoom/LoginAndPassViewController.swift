//
//  LoginAndPassViewController.swift
//  ClassRoom
//
//  Created by Igor Provorov on 2/5/20.
//  Copyright © 2020 Vadim Zhuk. All rights reserved.
//

import UIKit

class LoginAndPassViewController: UIViewController {
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var EnterButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var eyeButton: UIButton!
    let validation = ValidatorManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.placeholder = "Login"
        passwordTextField.placeholder = "Password"
        loginLabel.text = "Login"
        errorLabel.text = ""
    }
    
    @IBAction func eyeClick(_ sender: Any) {
        if passwordTextField.isSecureTextEntry == true {
            passwordTextField.isSecureTextEntry = false
            eyeButton.setImage(UIImage(named: "ic_Open_Eye"), for: .normal)
        } else {
            passwordTextField.isSecureTextEntry = true
            eyeButton.setImage(UIImage(named: "ic_Close_Eye"), for: .normal)
            
        }
    }
    
    @IBAction func logInButtonPushed(_ sender: Any) {
        
        if validation.isLoginCorrect(login: loginTextField.text ?? "") == true && validation.isPasswordCorrect(password: passwordTextField.text ?? "") == true {
            performSegue(withIdentifier: "LoginWithPass", sender: nil)
        }
    }
    
    @IBAction func changeLogin(_ sender: Any) {
        if validation.isLoginCorrect(login: loginTextField.text ?? "") == true {
            errorLabel.text = ""
        } else {
            errorLabel.text = "Incorrect login"
        }
    }
    
    @IBAction func changePassword(_ sender: Any) {
        if validation.isLoginCorrect(login: loginTextField.text ?? "") == true {
            if validation.isPasswordCorrect(password: passwordTextField.text ?? "") == true {
                errorLabel.text = ""
            } else {
                errorLabel.text = "Incorrect password"
            }
        } else {
            errorLabel.text = "Incorrect login"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as? NavigationViewController
        destinationVC?.loginName = ("Welcome, \(loginTextField.text ?? "")")
    }
    
}
