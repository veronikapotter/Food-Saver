//
//  HomeScreenView.swift
//  Food Saver
//
//  Created by Veronika Potter on 3/13/24.
//

import UIKit

class HomeScreenView: UIView {
    
    var test: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //MARK: set the background color...
        self.backgroundColor = .white
        
        //MARK: initializing the UI elements and constraints...
        
        setupTest()
        initConstraints()

    }
    
    func setupTest(){
        test = UILabel()
        test.text = "test"
        test.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(test)
    }
    
    func initConstraints(){
        NSLayoutConstraint.activate([
            test.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 32),
            test.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
