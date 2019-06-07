//
//  MaterialDetailTableViewCell.swift
//  FishingCompanionApp
//
//  Created by Admin on 06/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import UIKit

class MaterialDetailTableViewCell: UITableViewCell {

    var character : TVCharacter? {
        didSet {
            if let newCharacter = self.character {
                updateDisplay(forCharacter: newCharacter)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
