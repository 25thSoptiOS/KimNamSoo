//
//  DirectViewController2.swift
//  SOPT_2th
//
//  Created by 남수김 on 2019/10/13.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class DirectViewController2: UIViewController {
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var updateLabel: UILabel!
    @IBOutlet weak var cycleLabel: UILabel!
    
    var emailText = ""
    var updateText = ""
    var cycleText = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        self.emailLabel.text = emailText
        self.updateLabel.text = updateText
        self.cycleLabel.text = cycleText
        
        self.emailLabel.sizeToFit()
        self.updateLabel.sizeToFit()
        self.cycleLabel.sizeToFit()
      
    }
    
    @IBAction func backBtnClick(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

}
