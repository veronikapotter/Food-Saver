//
//  RecoverScreenViewController.swift
//  Food Saver
//
//  Created by Bayden Ibrahim on 3/17/24.
//


import UIKit
import Alamofire

class RecoverScreenViewController: UIViewController {

    var recoverScreen = RecoverScreenView()
    var accExists = false
    let defaults = UserDefaults.standard
    
    let notificationCenter = NotificationCenter.default
    
    override func loadView() {
        view = recoverScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Recover Password"

    // TODO: update with recover button
//        registerScreen.buttonSignup.addTarget(self, action: #selector(onButtonSignUpTapped), for: .touchUpInside)

    }
    
    // TODO: update with recover button
//    @objc func onButtonSignUpTapped(){
//        navigationController?.popViewController(animated: true)
//        navigationController?.popViewController(animated: true)
//    }
    
    // MARK: check if the account exists using the login API
    func registerUser(email: String, pass: String, name: String){
    }
    
    // MARK: check if the account exists using the login API
    func accountExists(email: String, pass: String){
        
    }
    
    // function for validation email. code from: https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift/25471164#25471164.
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    // MARK: alert for wrong password
    func showAccExistsAlert(){
    }
    
    // MARK: alert for email is invalid
    func showInvalidEmailAlert(){
        let alert = UIAlertController(
            title: "Error!", message: "Invalid email!",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        self.present(alert, animated: true)
    }
    
    // MARK: alert for different passwords
    func showMismatchPasswordAlert(){
        
    }
    

}


