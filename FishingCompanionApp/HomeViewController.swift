//
//  HomeViewController.swift
//  FishingCompanionApp
//
//  Created by Admin on 07/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    private let dataBase = DataBaseProvider()
    
    enum Level: String{
        case novice
        case perfection
        case expert
    }
    
    private func setUserLevel(level: String){
        UserDefaults.standard.set(level, forKey: "USERLEVEL")
    }
    
    @IBAction func onNoviceTouched(_ sender: Any) {
        setUserLevel(level: Level.novice.rawValue)
    }
    
    @IBAction func onPerfectionTouched(_ sender: Any) {
        setUserLevel(level: Level.perfection.rawValue)
    }
    
    @IBAction func onExpertTouched(_ sender: Any) {
        setUserLevel(level: Level.expert.rawValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
