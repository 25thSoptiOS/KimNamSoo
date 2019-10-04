//
//  FourthViewController.swift
//  SOPT_2thSeminar
//
//  Created by 남수김 on 03/10/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var segmentCtrl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textAttribute = [NSAttributedString.Key.foregroundColor: UIColor.black]
        
        self.segmentCtrl.setTitleTextAttributes(textAttribute, for: .normal)
    }
    

    
    @IBAction func nextButtonClick(_ sender: Any) {
        
        guard let nextVC: FourthNextViewController = self.storyboard?.instantiateViewController(identifier: "segment") as? FourthNextViewController else{return}
        
        //세그먼트 타이틀 반환
//        self.segmentCtrl.titleForSegment(at: self.segmentCtrl.selectedSegmentIndex)
        
        nextVC.indexData = self.segmentCtrl.selectedSegmentIndex
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}
