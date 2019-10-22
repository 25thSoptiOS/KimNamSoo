//
//  ButtonGenerate.swift
//  SOPT_2thAssignment
//
//  Created by 남수김 on 2019/10/22.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import UIKit

extension ViewController{
    
    func buttonFactory(title: String, color: UIColor) -> UIButton{
    
        let bt = UIButton()
        bt.setTitle(title, for: .normal)
        bt.titleLabel?.font = .boldSystemFont(ofSize: 25)
        bt.setTitleColor(UIColor.white, for: .normal)
        bt.setTitleColor(UIColor.gray, for: .highlighted)
        bt.backgroundColor = color
        bt.layer.cornerRadius = self.width/2
        
        return bt
    }
    
    
    
}
