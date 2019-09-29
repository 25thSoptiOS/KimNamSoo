//
//  ViewController.swift
//  helloWorld
//
//  Created by 남수김 on 28/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func helloSOPTButton(_ sender: Any) {
        self.helloLabel.text = "SOPT!"
    }
    
    //default : popOver
    @IBAction func nextPage(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "second") as? SecondViewController else{return}
        
        nextVC.s = "SOPT!"
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true)
    }
    
    
}

