//
//  MainViewController.swift
//  FishingCompanionApp
//
//  Created by Admin on 03/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        //navigationController?.setNavigationBarHidden(true, animated: false)

        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func unwindToHome(for unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as? ShowViewController,
            let identifier = unwindSegue.identifier,
            let unwindType = ShowViewController.UnwindType(rawValue: identifier)
        {
            
            switch unwindType {
            case .cancel:
                print("cancel")
            case .save:
                print("save")
            case .push:
                break
            }
        }
    }
    
    @IBAction func onSeaFinsgingTouched(_ sender: Any) {
        
    }
    
}
