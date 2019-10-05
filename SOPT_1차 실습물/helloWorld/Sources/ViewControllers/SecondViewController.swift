//
//  SecondViewController.swift
//  helloWorld
//
//  Created by 남수김 on 28/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    var s = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        self.secondLabel.text = s
    }
    

    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

}
