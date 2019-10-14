//
//  NonAutoMaticViewController.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class NonAutoMaticViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImageGenerate()
        
    }
    
    private func logoImageGenerate(){
        
        let logoImg = UIImageView()
        logoImg.image = UIImage(named: "logoIEumLogin")
        logoImg.bounds.size = CGSize(width: 61, height: 61)
        self.view.addSubview(logoImg)
        
        logoImg.translatesAutoresizingMaskIntoConstraints = false
        logoImg.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        logoImg.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 58).isActive = true
        
       
    }
    
    private func loginButtonGenerate(object: UITextField){
        let loginBt = UIButton()
        
        loginBt.setTitle("Login", for: .normal)
        loginBt.setTitleColor(UIColor.white, for: .normal)
        loginBt.layer.borderWidth = 1
        loginBt.layer.borderColor = UIColor.white.cgColor
        
        loginBt.translatesAutoresizingMaskIntoConstraints = false
        loginBt.leadingAnchor.constraint(equalToSystemSpacingAfter: object.leadingAnchor, multiplier: 1.0).isActive = true
        loginBt.trailingAnchor.constraint(equalToSystemSpacingAfter: object.trailingAnchor, multiplier: 1.0).isActive = true

        
        
        
    }
}
