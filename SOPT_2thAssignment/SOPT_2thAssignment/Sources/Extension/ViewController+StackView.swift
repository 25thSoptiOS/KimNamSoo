//
//  ViewController+StackView.swift
//  SOPT_2thAssignment
//
//  Created by 남수김 on 2019/10/22.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import UIKit

extension ViewController{
    
    func stackViewFactory(type: NSLayoutConstraint.Axis)->UIStackView{
        let row = UIStackView()
        row.axis = .horizontal  //스텍 방향
        row.alignment = .center  //정렬
        
        row.distribution = .equalSpacing  //공간분배
        row.spacing = space
    
        return row
    }
    
}
