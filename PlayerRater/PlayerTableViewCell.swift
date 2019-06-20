//
//  PlayerTableViewCell.swift
//  PlayerRater
//
//  Created by Jorge Alejandro Raad on 6/20/19.
//  Copyright © 2019 Jorge Alejandro Raad. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
