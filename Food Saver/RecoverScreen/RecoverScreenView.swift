//
//  RecoverScreenView.swift
//  Food Saver
//
//  Created by Bayden Ibrahim on 3/17/24.
//

import UIKit

class RecoverScreenView: UIView {

    var labelFoodSaver: UILabel!
    var labelSummary: UILabel!
    
    var labelRecover: UILabel!
    var textEmail: UITextField!
    var buttonRecover: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        setupLabelFoodSaver()
        setupLabelSummary()
        setupLabelRecover()
        setupTextEmail()
        setupButtonRecover()
        
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
    
    func setupLabelRecover() {
        labelRecover = UILabel()
        labelRecover.translatesAutoresizingMaskIntoConstraints = false
        labelRecover.font = labelSummary.font.withSize(16)
        labelRecover.text = "Enter the email associated with your account."
        self.addSubview(labelRecover)
    }
    
    
    func setupTextEmail(){
        textEmail = UITextField()
        textEmail.placeholder = "Email"
        textEmail.borderStyle = .roundedRect
        textEmail.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textEmail)
    }

    
    func setupButtonRecover(){
        buttonRecover = UIButton(type: .system)
        buttonRecover.titleLabel?.font = .boldSystemFont(ofSize: 16)
        buttonRecover.setTitle("Recover", for: .normal)
        buttonRecover.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(buttonRecover)
    }
    
    // MARK: init constraints
    func initConstraints(){
        NSLayoutConstraint.activate([
            // label constraints
            labelFoodSaver.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            labelFoodSaver.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            labelSummary.topAnchor.constraint(equalTo: labelFoodSaver.bottomAnchor, constant: 16),
            labelSummary.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            labelRecover.topAnchor.constraint(equalTo: labelSummary.bottomAnchor, constant: 48),
            labelRecover.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            textEmail.topAnchor.constraint(equalTo: labelRecover.bottomAnchor, constant: 16),
            textEmail.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            textEmail.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            textEmail.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        
            // button contraints
            buttonRecover.topAnchor.constraint(equalTo: textEmail.bottomAnchor, constant: 32),
            buttonRecover.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

