//
//  PostListTableViewCell.swift
//  SOPT_5th
//
//  Created by 남수김 on 2019/11/20.
//  Copyright © 2019 ns. All rights reserved.
//

import UIKit

class PostListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
