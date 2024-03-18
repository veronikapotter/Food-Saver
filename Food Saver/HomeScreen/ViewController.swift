//
//  ViewController.swift
//  Food Saver
//
//  Created by Veronika Potter on 3/13/24.
//

import UIKit

class ViewController: UIViewController {
    
    let displayScreen = HomeScreenView()
    
    //MARK: patch the view of the controller to the DisplayView...
    override func loadView() {
        view = displayScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("home screen gtg")
        
        // TODO: fix this to only load login if no API key
        let loginScreenController = LoginScreenViewController()
        navigationController?.pushViewController(loginScreenController, animated: true)
    }
    
}

