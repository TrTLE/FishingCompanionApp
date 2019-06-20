//
//  MainViewController.swift
//  FishingCompanionApp
//
//  Created by Admin on 03/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    private let levelUser = UserDefaults.standard.string(forKey: "USERLEVEL")
    
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
    
    @IBAction func onPondTouched(_ sender: Any) {
        let nextVC:UIViewController?
        
        if levelUser == "novice" {
            nextVC = storyboard?.instantiateViewController(withIdentifier: "NovicePondViewController")
        } else if levelUser == "expert" {
            nextVC = storyboard?.instantiateViewController(withIdentifier: "ExpertPondViewController")
        } else {
            nextVC = nil
        }
        
        if let nextVC = nextVC {
            show(nextVC, sender: nil)
        }

    }
    
    
    
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    //!!!!!!!!!!!!!!   OUVERTURE D'UNE VUE MODALE   !!!!!!!!!!!!!!!!!!!!!!
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    
    //var navController : UINavigationController?
    //if levelUser == "novice" {
    //            if let viewNovicePond = storyboard?.instantiateViewController(withIdentifier: "NovicePondViewController") as? NovicePondViewController  {
    //                navController = UINavigationController(rootViewController: viewNovicePond)
    //                navController?.setNavigationBarHidden(false, animated: true)
    //            }
    //} else if levelUser == "expert" {
    //            if let viewExpertPond = storyboard?.instantiateViewController(withIdentifier: "ExpertPondViewController") as? ExpertPondViewController {
    //                navController = UINavigationController(rootViewController: viewExpertPond)
    //            }
    //present(navController!, animated: true, completion: nil)
    
}
