//
//  MaterialDetailViewController.swift
//  FishingCompanionApp
//
//  Created by Admin on 06/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import UIKit

class MaterialDetailViewController: UIViewController {

    var showTitle : String = ""
    var character : TvCharacter? {
        didSet {
            if let newCharacter = self.character {
                updateDisplay(forCharacter: newCharacter)
            }
        }
    }
    
    @IBOutlet weak var ui_testLabel: UILabel!
    @IBOutlet weak var ui_showNameLabel: UILabel!
    @IBOutlet weak var ui_characterName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let receivedCharacter = self.character {
            updateDisplay(forCharacter: receivedCharacter)
        }
        // Do any additional setup after loading the view.
    }
    
    func updateDisplay(forCharacter character: TvCharacter) {
        guard ui_characterName != nil,
            ui_showNameLabel != nil,
        ui_testLabel != nil else {
                return
        }
        
        ui_characterName.text = character.name
        ui_showNameLabel.text = showTitle
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
