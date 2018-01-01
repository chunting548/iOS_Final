//
//  AttractionTableViewCell.swift
//  Final
//
//  Created by Chunting on 30/12/2017.
//  Copyright © 2017 chunting. All rights reserved.
//
//  Xcode Version 9.2 (9C40b)

import UIKit

class AttractionTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
