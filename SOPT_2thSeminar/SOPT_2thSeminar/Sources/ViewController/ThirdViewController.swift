//
//  ThirdViewController.swift
//  SOPT_2thSeminar
//
//  Created by 남수김 on 03/10/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var red: UISlider!
    @IBOutlet weak var green: UISlider!
    @IBOutlet weak var blue: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func SliderChange(_ sender: UISlider) {
        
        var r = red.value
        var g = green.value
        var b = blue.value
        
        switch sender.tag {
        case 1:
            r = sender.value
        case 2:
            g = sender.value
        case 3:
            b = sender.value
        default:
            return
            
        }
        
        self.view.backgroundColor = UIColor.init(red: CGFloat(r/255), green: CGFloat(g/255), blue: CGFloat(b/255), alpha: 1.0)
    }
    
}
