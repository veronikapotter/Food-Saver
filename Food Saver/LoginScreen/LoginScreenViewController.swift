//
//  LoginScreenViewController.swift
//  Food Saver
//
//  Created by Veronika Potter on 3/17/24.
//

import UIKit
import Alamofire

class LoginScreenViewController: UIViewController {
    
    var loginScreen = LoginScreenView()
    
    // MARK: set up defaults and notification center
    let defaults = UserDefaults.standard
    let notificationCenter = NotificationCenter.default
    
    override func loadView() {
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"

        loginScreen.buttonLogin.addTarget(self, action: #selector(onButtonLogInTapped), for: .touchUpInside)
        loginScreen.buttonSignup.addTarget(self, action: #selector(onButtonSignUpTapped), for: .touchUpInside)
        loginScreen.buttonForgotPass.addTarget(self, action: #selector(onButtonForgotPass), for: .touchUpInside)
        
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
    // MARK: set up button login
    @objc func onButtonLogInTapped(){
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: alert for no account
    func showNoAccountAlert(){
        let alert = UIAlertController(
            title: "Error!", message: "That email is not registered; please sign up.",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        self.present(alert, animated: true)
    }
    
    // MARK: alert for wrong password
    func showWrongPassAlert(){
        let alert = UIAlertController(
            title: "Error!", message: "Wrong Password.",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        self.present(alert, animated: true)
    }
    
    // MARK: set up button signup
    @objc func onButtonSignUpTapped(){
        let registerScreenController = RegisterScreenViewController()
        navigationController?.pushViewController(registerScreenController, animated: true)
    }
    
    // MARK: set up button forgot password
    // TODO: fill in with Fogot pass screen
    @objc func onButtonForgotPass(){
        let recoverScreenController = RecoverScreenViewController()
        //navigationController?.popViewController(animated: true)
        navigationController?.pushViewController(recoverScreenController, animated: true)
    }

}

