//
//  Music.swift
//  7th_PracticeTableView
//
//  Created by 남수김 on 2019/12/06.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import UIKit

struct Music{
    var albumImg: UIImage?
    var musicTitle: String?
    var singer: String?
    
    init(title: String, singer: String, coverName: String) {
        self.albumImg = UIImage(named: coverName)
        self.musicTitle = title
        self.singer = singer
    }
}
