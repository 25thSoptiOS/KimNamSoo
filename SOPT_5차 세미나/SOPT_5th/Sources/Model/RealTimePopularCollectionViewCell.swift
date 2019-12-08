//
//  RealTimePopularCollectionViewCell.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/20.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class RealTimePopularCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var kindOfWriteLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var userCotentLabel: UILabel!
    @IBOutlet weak var goodNumLabel: UILabel!
    @IBOutlet weak var commentNumLabel: UILabel!
    
    var post: RealTimeResult.RealTimeData?{
        didSet{
            self.kindOfWriteLabel.text = "RealTime종류\(oldValue?.boardCategory ?? "")"
            self.userNameLabel.text = "사용자\(oldValue?.boardId ?? "")"
            self.dateLabel.text = "날짜\(oldValue?.boardDate ?? "")"
            self.commentNumLabel.text = "\(oldValue?.boardCommentCount ?? 0)"
            self.goodNumLabel.text = "\(oldValue?.boardLikeCount ?? 0)"
            self.userCotentLabel.text = "내용\(oldValue?.boardContent ?? "")"
        }
    }
}
