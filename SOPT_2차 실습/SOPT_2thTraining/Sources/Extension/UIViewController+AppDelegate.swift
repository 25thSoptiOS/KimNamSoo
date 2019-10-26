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

}
