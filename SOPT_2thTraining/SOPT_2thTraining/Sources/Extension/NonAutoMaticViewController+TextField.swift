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
    
    //MARK: - Factory
    func textFieldFactory() -> UITextField{
        let textField = UITextField()
        textField.borderStyle = .none
        
        return textField
    }
    
    func lineFactory() -> UIView{
        let line = UIView()
        line.backgroundColor = UIColor.white
        
        return line
    }
    
    //MARK: - Generate 
    func idTextFieldGenerate(){
        
        idTextField = textFieldFactory()
        self.view.addSubview(idTextField)
        
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        idTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
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
        idline.leftAnchor.constraint(equalTo: idLabel.leftAnchor).isActive = true
        idline.rightAnchor.constraint(equalTo: idTextField.rightAnchor).isActive = true
        
    }
    
    func pwTextFieldGenerate(){
        
        pwTextField = textFieldFactory()
        self.view.addSubview(pwTextField)
        
        pwTextField.translatesAutoresizingMaskIntoConstraints = false
        pwTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        pwTextField.leftAnchor.constraint(equalTo: pwLabel.rightAnchor, constant: 1).isActive = true
        pwTextField.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -68).isActive = true
        pwTextField.centerYAnchor.constraint(equalTo: pwLabel.centerYAnchor).isActive = true
        
    }
    
    func pwUnderLineGenerate(){
        
        pwLine = lineFactory()
        self.view.addSubview(pwLine)
        
        pwLine.translatesAutoresizingMaskIntoConstraints = false
        pwLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        pwLine.leftAnchor.constraint(equalTo: pwLabel.leftAnchor).isActive = true
        pwLine.rightAnchor.constraint(equalTo: pwTextField.rightAnchor).isActive = true
        pwLine.topAnchor.constraint(equalTo: pwTextField.bottomAnchor).isActive = true
        
    }
    
    
    
}
