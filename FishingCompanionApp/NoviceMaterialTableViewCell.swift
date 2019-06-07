//
//  NoviceMaterialTableViewCell.swift
//  FishingCompanionApp
//
//  Created by Admin on 04/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import UIKit

class NoviceMaterialTableViewCell: UITableViewCell {

    @IBOutlet weak var labelCell: UILabel!
    
    func display(pTvCharacter: TvCharacter) {
        labelCell.text = pTvCharacter.name
    }
    
    

}
