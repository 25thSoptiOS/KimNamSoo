//
//  NonAutoMaticViewController+Label.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import UIKit

extension NonAutoMaticViewController{
    
    //MARK: - Factory
    func labelFactory(text: String) -> UILabel{
        let label = UILabel()
        label.text = text
        label.textColor = UIColor.white
        
        return label
    }
    
    //MARK: - Generate 
    func idLabelGenerate(){
        idLabel = labelFactory(text: "ID")
        self.view.addSubview(idLabel)
        
        //오토레이아웃
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        idLabel.topAnchor.constraint(equalTo: self.backImg.topAnchor, constant: 137).isActive = true
        idLabel.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 69).isActive = true
        idLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        idLabel.widthAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    
    func pwLabelGenerate(){
        pwLabel = labelFactory(text: "PW")
        self.view.addSubview(pwLabel)
        
        //오토레이아웃
        pwLabel.translatesAutoresizingMaskIntoConstraints = false
        pwLabel.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant:34 ).isActive = true
        pwLabel.leftAnchor.constraint(equalTo: idLabel.leftAnchor).isActive = true
        pwLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        pwLabel.widthAnchor.constraint(equalToConstant: 27).isActive = true
    }
}
