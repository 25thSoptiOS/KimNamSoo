//
//  WirteViewController.swift
//  study_Alamofire
//
//  Created by 남수김 on 2019/11/05.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class WriteViewController: UIViewController {

    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var useridTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var sendRequestButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        uiSet()
        
    }
    
    func uiSet() {
        self.contentTextView.layer.borderColor = UIColor.lightGray.cgColor
        self.contentTextView.layer.borderWidth = 1.0
        self.contentTextView.layer.cornerRadius = 20
        self.sendRequestButton.layer.cornerRadius = 15
    }
    
    //통신버튼 클릭시
    @IBAction func sendRequestButtonClick(_ sender: Any) {
    }
}
