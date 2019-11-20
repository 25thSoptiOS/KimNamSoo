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
    var id = -1
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func likeButtonClick(_ sender: UIButton) {
        print("\(self.id) like!")
        
        if sender.isSelected{
            sender.setImage(UIImage(named: "favoriteUnselectedIc"), for: .normal)
        }else{
            sender.setImage(UIImage(named: "favoriteSelectedIc"), for: .normal)
        }
        sender.isSelected = !sender.isSelected
    }
    
}
