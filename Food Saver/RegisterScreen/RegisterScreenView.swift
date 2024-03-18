//
//  RegisterScreenView.swift
//  Food Saver
//
//  Created by Veronika Potter on 3/17/24.
//

import UIKit

class RegisterScreenView: UIView {

    var labelFoodSaver: UILabel!
    var labelSummary: UILabel!
    var textName: UITextField!
    var textEmail: UITextField!
    var textPassword: UITextField!
    var textPassword2: UITextField!
    var buttonSignup: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupLabelFoodSaver()
        setupLabelSummary()
        setupTextName()
        setupTextEmail()
        setupTextPassword()
        setupTextPassword2()
        setupButtonSignup()
        
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
    
    func setupTextName(){
        textName = UITextField()
        textName.placeholder = "Name"
        textName.borderStyle = .roundedRect
        textName.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textName)
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
    
    func setupTextPassword2(){
        textPassword2 = UITextField()
        textPassword2.placeholder = "Confirm password"
        textPassword2.borderStyle = .roundedRect
        textPassword2.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textPassword2)
    }
    
    func setupButtonSignup(){
        buttonSignup = UIButton(type: .system)
        buttonSignup.titleLabel?.font = .boldSystemFont(ofSize: 16)
        buttonSignup.setTitle("Sign Up", for: .normal)
        buttonSignup.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonSignup)
    }
    
    // MARK: init constraints
    func initConstraints(){
        NSLayoutConstraint.activate([
            // label constraints
            labelFoodSaver.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            labelFoodSaver.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            labelSummary.topAnchor.constraint(equalTo: labelFoodSaver.bottomAnchor, constant: 16),
            labelSummary.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            // text field constraints
            textName.topAnchor.constraint(equalTo: labelSummary.bottomAnchor, constant: 32),
            textName.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            textName.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            textName.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            textEmail.topAnchor.constraint(equalTo: textName.bottomAnchor, constant: 16),
            textEmail.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            textEmail.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            textEmail.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            textPassword.topAnchor.constraint(equalTo: textEmail.bottomAnchor, constant: 16),
            textPassword.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            textPassword.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            textPassword.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        
            // button contraints
            buttonSignup.topAnchor.constraint(equalTo: textPassword.bottomAnchor, constant: 32),
            buttonSignup.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
