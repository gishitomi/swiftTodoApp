//
//  TodoTableViewCell.swift
//  SwiftToDoApp
//
//  Created by 宜志富紹太 on 2022/07/31.
//

import UIKit

class TodoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var todoText: UILabel!
    @IBOutlet weak var todoCheckBtn: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
