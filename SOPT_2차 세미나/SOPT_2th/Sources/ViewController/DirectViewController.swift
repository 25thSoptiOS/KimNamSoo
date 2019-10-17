//
//  DirectViewController.swift
//  SOPT_2th
//
//  Created by 남수김 on 2019/10/13.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class DirectViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var updateLabel: UILabel!
    @IBOutlet weak var updateSwitch: UISwitch!
    @IBOutlet weak var cycleLabel: UILabel!
    @IBOutlet weak var cycleStep: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //직접 값전달
        
    }
 
    @IBAction func submitBtnClick(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "direct2") as? DirectViewController2 else {return}
        
        nextVC.emailText = emailTextField.text ?? ""
        nextVC.updateText = updateLabel.text ?? ""
        nextVC.cycleText = cycleLabel.text ?? ""
        
        self.present(nextVC, animated: true)
        
    }
    
    @IBAction func switchClick(_ sender: UISwitch) {
        if sender.isOn{
            self.updateLabel.text = "자동갱신"
        }else{
            self.updateLabel.text = "수동갱신"
        }
    }
    
    @IBAction func stepClick(_ sender: UIStepper) {
        self.cycleLabel.text = "\(Int(sender.value)) 분 마다"
        self.cycleLabel.sizeToFit()
    }
    
}
