//
//  NonAutoMaticViewController+TextField.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import UIKit

extension NonAutoMaticViewController{
    
    func textFieldFactory() -> UITextField{
        let textField = UITextField()
        textField.borderStyle = .none
        textField.frame.size = CGSize(width: 50, height: 30)
        
        return textField
    }
    
    func lineFactory() -> UIView{
        let line = UIView()
        line.backgroundColor = UIColor.white
        
        return line
    }
    
    func idTextFieldGenerate(){
        
        idTextField = textFieldFactory()
        self.view.addSubview(idTextField)
        
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        idTextField.leftAnchor.constraint(equalTo: idLabel.rightAnchor, constant: 1).isActive = true
        idTextField.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -68).isActive = true
        idTextField.centerYAnchor.constraint(equalTo: idLabel.centerYAnchor).isActive = true
    }
    
    func idUnderLineGenerate(){
        
        let idline = lineFactory()
        self.view.addSubview(idline)
        
        idline.translatesAutoresizingMaskIntoConstraints = false
        idline.heightAnchor.constraint(equalToConstant: 1).isActive = true
        idline.topAnchor.constraint(equalTo: idTextField.bottomAnchor).isActive = true
        idline.leadingAnchor.constraint(equalTo: idLabel.leadingAnchor).isActive = true
        idline.trailingAnchor.constraint(equalTo: idTextField.trailingAnchor).isActive = true
        
    }
    
    func pwTextFieldGenerate(){
        let pwTextField = textFieldFactory()
        self.view.addSubview(pwTextField)
        
        pwTextField.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    
    
}
