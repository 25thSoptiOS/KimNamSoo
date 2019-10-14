//
//  NonAutoMaticViewController.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class NonAutoMaticViewController: UIViewController {

    var logoImg: UIImageView!
    var backImg: UIImageView!
    var idLabel: UILabel!
    var idTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImageGenerate()
        backgroundImageGenerate()
        idLabelGenerate()
        idTextFieldGenerate()
        idUnderLineGenerate()
    }
    
    
}


