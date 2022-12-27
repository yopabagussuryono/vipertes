//
//  LoginView.swift
//  BelajarFundamental
//
//  Created by yopa bagus on 24/12/22.
//

// ViewController
// protocol
// reference to presenter

import UIKit
import Foundation

protocol ViewUser {
    
    var presenter: Presenteruser? {get set}
    
    func update (with users: [EntityLogin])
    func update (with error: String)
    
}

class LoginView: UIViewController, ViewUser {
    
    


    @IBOutlet weak var userField: TextFieldCustom!
    @IBOutlet weak var passField: TextFieldCustom!
    @IBOutlet weak var loginButton: ButtonCustom!
    @IBOutlet weak var registerButton: ButtonCustom!
    
    var presenter: Presenteruser?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpLogin()
    }
}

extension LoginView {
    
    func update(with users: [EntityLogin]) {
        
    }
    
    func update(with error: String) {
        
    }
}


extension LoginView {
    func setUpLogin(){
       
        userField.useUnderline()
        passField.useUnderline()
        userField.placeholder = "UserName"
        passField.placeholder = "Password"
        
        loginButton.addBorder(radius: 5,
                              width: 1,
                              borderColor: UIColor.systemMint.cgColor)
        registerButton.addBorder(radius: 5,
                                 width: 1,
                                 borderColor: UIColor.systemMint.cgColor)
        
        loginButton.addTarget(self, action: #selector(loginPress(_:)), for: .touchUpInside)
        registerButton.addTarget(self, action: #selector(registerPress), for: .touchUpInside)
    }
}

extension LoginView {
    
    @objc private func loginPress(_ sender: UIButton){
    let mainVc = MainView()
    self.navigationController?.pushViewController(mainVc, animated: true)
    }
    @objc private func registerPress(_ sender: UIButton){
    let regVc = RegisterView()
    self.navigationController?.pushViewController(regVc, animated: true)
    }
}
