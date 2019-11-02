//
//  UIViewController+AppDelegate.swift
//  SOPT_2thTraining
//
//  Created by 남수김 on 2019/10/26.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    var appDelegate: AppDelegate {
           return UIApplication.shared.delegate as! AppDelegate
       }

    func simpleAlert(title: String, message: String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "확인", style: .cancel)
        alert.addAction(ok)
    
        self.present(alert, animated: true)
    }
}
