//
//  NonAutoMaticViewController+Button.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import UIKit

extension NonAutoMaticViewController{
    
    //MARK: - Factory
    func buttonFactory(title: String, isBorder: Bool) -> UIButton{
        
        let bt = UIButton(type: .system)
        bt.setTitle(title, for: .normal)
        bt.titleLabel?.font = .systemFont(ofSize: 17)
        bt.setTitleColor(UIColor.white, for: .normal)
        bt.setTitleColor(UIColor.blue, for: .highlighted)
        
        if isBorder {
            bt.layer.borderWidth = 1
            bt.layer.borderColor = UIColor.white.cgColor
            bt.layer.cornerRadius = 16
        }
        
        return bt
    }
    
    
    //MARK: - Generate
    func loginButtonGenerate(){
        loginBt = buttonFactory(title: "Login", isBorder: true)
        self.view.addSubview(loginBt)
        
        loginBt.translatesAutoresizingMaskIntoConstraints = false
        loginBt.leadingAnchor.constraint(equalTo: pwLine.leadingAnchor).isActive = true
        loginBt.trailingAnchor.constraint(equalTo: pwLine.trailingAnchor).isActive = true
        loginBt.topAnchor.constraint(equalTo: pwLine.bottomAnchor, constant: 54).isActive = true
        loginBt.heightAnchor.constraint(equalToConstant: 33).isActive = true
    }
    
    func signUpButtonGenerate(){
        let signBt = buttonFactory(title: "Sign up", isBorder: false)
        self.view.addSubview(signBt)
        
        signBt.translatesAutoresizingMaskIntoConstraints = false
        signBt.leadingAnchor.constraint(equalTo: loginBt.leadingAnchor).isActive = true
        signBt.trailingAnchor.constraint(equalTo: loginBt.trailingAnchor).isActive = true
        signBt.topAnchor.constraint(equalTo: loginBt.bottomAnchor, constant: 29).isActive = true
        signBt.heightAnchor.constraint(equalToConstant: 33).isActive = true
    }
    
}
