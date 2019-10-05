//
//  CandleViewController.swift
//  SOPT_2thSeminar
//
//  Created by 남수김 on 03/10/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class CandleViewController: UIViewController {

    @IBOutlet weak var candleImg: UIImageView!
    @IBOutlet weak var candleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func switchClick(_ sender: UISwitch) {
        if sender.isOn {
            self.candleImg.image = UIImage(named: "candle-on")
            self.candleLabel.text = "Candle is On"
        }else {
            self.candleImg.image = UIImage(named: "candle-off")
            self.candleLabel.text = "Candle is Off"
        }
    }
    
}
