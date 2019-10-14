//
//  ViewController.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButtonSet()
        
    }
    
    // MARK: 로그인버튼 테두리
    func loginButtonSet(){
        self.loginButton.layer.borderColor = UIColor.white.cgColor
        self.loginButton.layer.borderWidth = 1
        self.loginButton.layer.cornerRadius = 22
    }

}

