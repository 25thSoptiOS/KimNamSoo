//
//  SignUpViewController.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/11/02.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func signUpButtonClick(_ sender: Any) {
        
        guard let id = idTextField.text else {return}
        guard let pw = pwTextField.text else {return}
        guard let name = nameTextField.text else {return}
        guard let phone = phoneTextField.text else {return}
        
        SignUpService.shared.getSignUpResult(id: id, pw: pw, name: name, phone: phone){
            data in
            
            switch data {
                
            case .success(let data):
                let user_data = data as! SignUpResult
                self.simpleAlert(title: "가입 성공", message: "\(user_data.message)", type: 1)
                
            case .requestErr(let message):
                self.simpleAlert(title: "가입 실패", message: "\(message)", type: 0)
                
            case .pathErr:
                print(".pathErr")
                
            case .serverErr:
                print(".serverErr")
                
            case .networkFail:
                self.simpleAlert(title: "가입 실패", message: "네트워크 상태를 확인해주세요.", type: 0)
            }
        }
        
    }
}
