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
    
    func loginButtonGenerate(object: UITextField){
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
