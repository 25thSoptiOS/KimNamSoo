//
//  NonAutoMaticViewController.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/14.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class NonAutoMaticViewController: UIViewController, UITextFieldDelegate{

    var logoImg: UIImageView!
    var backImg: UIImageView!
    var idLabel: UILabel!
    var idTextField: UITextField!
    var pwLabel: UILabel!
    var pwTextField: UITextField!
    var loginBt: UIButton!
    var pwLine: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerNotification()
        
        logoImageGenerate()
        backgroundImageGenerate()
        idLabelGenerate()
        idTextFieldGenerate()
        idUnderLineGenerate()
        pwLabelGenerate()
        pwTextFieldGenerate()
        pwUnderLineGenerate()
        loginButtonGenerate()
        signUpButtonGenerate()
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        unregisterNotification()
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func registerNotification(){
        NotificationCenter.default.addObserver(self, selector: #selector(moveUp), name: UIResponder.keyboardDidShowNotification, object: nil)
        
         NotificationCenter.default.addObserver(self, selector: #selector(moveDown), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    func unregisterNotification(){
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardDidShowNotification, object: nil)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    @objc func moveUp(_ notification: NSNotification){
        
        guard let keyboardHeight = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.height else { return }
        
        guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else { return }
        
        UIView.animate(withDuration: duration, delay: 0 , animations: {
            
            self.logoImg.alpha = 0.0
            // layout 줄이기
            self.idLabel.
            
        })
        
    }
    
    @objc func moveDown(_ notification: NSNotification){
        
        guard let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double else { return }
        
        UIView.animate(withDuration: duration, delay: 0,
                       animations: {
                        
                        self.logoImg.alpha = 1.0
                        
            
        })
    }
}


