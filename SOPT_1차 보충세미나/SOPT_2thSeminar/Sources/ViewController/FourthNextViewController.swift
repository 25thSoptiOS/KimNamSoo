//
//  FourthNextViewController.swift
//  SOPT_2thSeminar
//
//  Created by 남수김 on 03/10/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class FourthNextViewController: UIViewController {

    var textData = ""
    var indexData = 0
    @IBOutlet weak var segmentCtrl: UISegmentedControl!
    @IBOutlet weak var directionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.segmentCtrl.selectedSegmentIndex = indexData
        
        if indexData == 0{
            self.directionLabel.text = "왼쪽 선택됨"
        }else{
            self.directionLabel.text = "오른쪽 선택됨"
        }
        
        self.directionLabel.sizeToFit()
        
       
    }
    

    
}
