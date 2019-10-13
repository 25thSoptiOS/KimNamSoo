//
//  ViewController.swift
//  SOPT_2th
//
//  Created by 남수김 on 2019/10/13.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination
        let bt = sender as? UIButton
        nextVC.title = bt?.titleLabel?.text
        nextVC.view.backgroundColor = bt?.titleColor(for: .normal)
        
    }

}

