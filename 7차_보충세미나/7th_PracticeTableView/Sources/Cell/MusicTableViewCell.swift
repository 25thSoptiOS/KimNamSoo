//
//  MusicTableViewCell.swift
//  7th_PracticeTableView
//
//  Created by 남수김 on 2019/12/06.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    
    // MusicTable - MusicCell - ContentView - Album
    @IBOutlet var albumImg: UIImageView!
    // MusicTable - MusicCell - ContentView - Title
    @IBOutlet var musicTitle: UILabel!
    // MusicTable - MusicCell - ContentView - Singer
    @IBOutlet var singer: UILabel!
    
    var viewModel: Music? {
        willSet {
            self.albumImg.image = newValue?.albumImg
            self.musicTitle.text = newValue?.musicTitle
            self.singer.text = newValue?.singer
        }
    }
    
    // 객체 초기화
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        albumImg.layer.cornerRadius = 3
        albumImg.layer.masksToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
