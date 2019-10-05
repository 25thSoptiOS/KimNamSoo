//
//  ViewController5.swift
//  SOPT_2thSeminar
//
//  Created by 남수김 on 03/10/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class ViewController5: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == self.idTextField {
            textField.resignFirstResponder()
            self.pwTextField.becomeFirstResponder()
        }
        textField.resignFirstResponder()
        return true
    }

}
