//
//  ViewController.swift
//  SOPT_HomeWork1
//
//  Created by 남수김 on 29/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guestImg: UIImageView!
    @IBOutlet weak var heartImg: UIImageView!
    @IBOutlet weak var likeLabel1: UILabel!
    @IBOutlet weak var likeLabel2: UILabel!
    
    var like: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiSet()
    }
    
    @IBAction func likeBtnClick(_ sender: Any) {
        if !like{
            self.heartImg.image = UIImage(named: "like")
            self.likeLabel1.isHidden = false
            self.likeLabel2.isHidden = false
            like = !like
        }else{
            self.heartImg.image = UIImage(named: "heart")
            self.likeLabel1.isHidden = true
            self.likeLabel2.isHidden = true
            like = !like
        }
    }
    
    func uiSet(){
        self.guestImg.layer.cornerRadius = self.guestImg.frame.width/2
        self.guestImg.layer.borderColor = UIColor.black.cgColor
        self.guestImg.layer.borderWidth = 1
    }
    
}
