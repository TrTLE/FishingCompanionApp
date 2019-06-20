//
//  NovicePondViewController.swift
//  FishingCompanionApp
//
//  Created by Admin on 18/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import UIKit

class NovicePondViewController: UIViewController, UICollectionViewDelegate {

    
    @IBOutlet weak var ui_MaterialCollectionView: UICollectionView!
    
    private var collectionController : UICollectionViewDataSource? = nil
    
    private var flowManager : UICollectionViewFlowLayout? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionController = ui_MaterialCollectionView.dataSource!
        
        flowManager = (ui_MaterialCollectionView.collectionViewLayout as! UICollectionViewFlowLayout)
    
        ui_MaterialCollectionView.delegate = self
        
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
