//
//  LoginScreenView.swift
//  Food Saver
//
//  Created by Veronika Potter on 3/17/24.
//

import UIKit

class LoginScreenView: UIView {
    
    var labelFoodSaver: UILabel!
    var labelSummary: UILabel!
    var textEmail: UITextField!
    var textPassword: UITextField!
    var buttonLogin: UIButton!
    var buttonSignup: UIButton!
    var buttonForgotPass: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupLabelFoodSaver()
        setupLabelSummary()
        setupTextEmail()
        setupTextPassword()
        setupButtonLogin()
        setupButtonSignup()
        setupButtonForgotPass()
        
        initConstraints()
    }
    
    func setupLabelFoodSaver() {
        labelFoodSaver = UILabel()
        labelFoodSaver.translatesAutoresizingMaskIntoConstraints = false
        labelFoodSaver.font = labelFoodSaver.font.withSize(36)
        labelFoodSaver.text = "Food Saver"
        self.addSubview(labelFoodSaver)
    }
    
    func setupLabelSummary() {
        labelSummary = UILabel()
        labelSummary.translatesAutoresizingMaskIntoConstraints = false
        labelSummary.font = labelSummary.font.withSize(20)
        labelSummary.text = "Your pantry, everywhere."
        self.addSubview(labelSummary)
    }
    
    func setupTextEmail(){
        textEmail = UITextField()
        textEmail.placeholder = "Email"
        textEmail.borderStyle = .roundedRect
        textEmail.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textEmail)
    }
    
    func setupTextPassword(){
        textPassword = UITextField()
        textPassword.placeholder = "Password"
        textPassword.borderStyle = .roundedRect
        textPassword.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textPassword)
    }
    
    // TODO: add styling to login and signup 
    func setupButtonLogin(){
        buttonLogin = UIButton(type: .system)
        buttonLogin.titleLabel?.font = .boldSystemFont(ofSize: 16)
        buttonLogin.setTitle("Log In", for: .normal)
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonLogin)
    }
    
    func setupButtonSignup(){
        buttonSignup = UIButton(type: .system)
        buttonSignup.titleLabel?.font = .boldSystemFont(ofSize: 16)
        buttonSignup.setTitle("Sign Up", for: .normal)
        buttonSignup.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonSignup)
    }
    
    func setupButtonForgotPass(){
        buttonForgotPass = UIButton(type: .system)
        buttonForgotPass.titleLabel?.font = .boldSystemFont(ofSize: 16)
        buttonForgotPass.setTitle("Forgot Password?", for: .normal)
        buttonForgotPass.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonForgotPass)
    }
    
    // MARK: init constraints
    func initConstraints(){
        NSLayoutConstraint.activate([
            // set up "logo"
            labelFoodSaver.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            labelFoodSaver.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            labelSummary.topAnchor.constraint(equalTo: labelFoodSaver.bottomAnchor, constant: 16),
            labelSummary.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            // set up text fields
            textEmail.topAnchor.constraint(equalTo: labelSummary.bottomAnchor, constant: 32),
            textEmail.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            textEmail.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            textEmail.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            textPassword.topAnchor.constraint(equalTo: textEmail.bottomAnchor, constant: 16),
            textPassword.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            textPassword.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            textPassword.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
            // set up various buttons
            buttonLogin.topAnchor.constraint(equalTo: textPassword.bottomAnchor, constant: 32),
            buttonLogin.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            buttonSignup.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 16),
            buttonSignup.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            buttonForgotPass.topAnchor.constraint(equalTo: buttonSignup.bottomAnchor, constant: 16),
            buttonForgotPass.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
