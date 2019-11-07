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
    
    //type: 0 심플
    //type: 1 alert종료
    func simpleAlert(title: String, message: String, type: Int){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        var ok: UIAlertAction
        if type == 0{
            ok = UIAlertAction(title: "확인", style: .cancel)
        }else{
            ok = UIAlertAction(title: title, style: .cancel, handler: {action in
                self.dismiss(animated: true)
            })
            
        }
        alert.addAction(ok)
        
        self.present(alert, animated: true)
    }
}
