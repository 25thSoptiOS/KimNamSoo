//
//  MusicDetailVC.swift
//  7th_PracticeTableView
//
//  Created by 남수김 on 2019/12/06.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class MusicDetailVC: UIViewController {

    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var albumImageView: UIImageView!
    
    var albumImg: UIImage?
    var musicTitle: String?
    var singer: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
       
    }
    
    func setData() {
        self.albumImageView.image = albumImg
        self.musicTitleLabel.text = musicTitle
        self.singerLabel.text = singer
    }
}
