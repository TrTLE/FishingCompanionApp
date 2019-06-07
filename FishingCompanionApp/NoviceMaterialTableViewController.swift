//
//  NoviceMaterialTableViewController.swift
//  FishingCompanionApp
//
//  Created by Admin on 04/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import UIKit

class NoviceMaterialTableViewController: UITableViewController {
    
    var tvShows: TvShowList = TvShowList()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return tvShows.showCount
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let tvShow = tvShows.show(atIndex: section)
        return tvShow?.count() ?? 0
    }
    
    
    
    //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    //@@@@@@@@@@@@@@          CONFIGURATION DE L'AFFICHAGE D'UNE CELLULE      @@@@@@@@@@@@@@@@@@@@@@@@@@@
    //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! NoviceMaterialTableViewCell
        
        // Configure the cell...
        
        
        
        
        if let show = tvShows.show(atIndex: indexPath.section),
            let character : TvCharacter = show.getIndex(index: indexPath.row) {
            cell.display(pTvCharacter: character)
        }
        
        return cell
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if let show = tvShows.show(atIndex: indexPath.section) {
                if (show.deleteCharacter(index: indexPath.row)) {
                    // Delete the row from the data source
                    tableView.deleteRows(at: [indexPath], with: .fade)
                }
            }
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return tvShows.show(atIndex: section)?.getName()
    }
    
    @IBAction func addButtonTouched(_ sender: Any) {
        let alertVC = UIAlertController(title: "Nouveau personnage", message: "Ajouter un nouveau personnage", preferredStyle: .alert)
        
        alertVC.addTextField{ (characterTextField) in
            characterTextField.placeholder = "Personnage"
        }
        alertVC.addTextField { (showTextField) in
            showTextField.placeholder = "Série"
        }
        
        let okAction = UIAlertAction(title: "Ajouter", style: .default) { (_) in
            if let characterName = alertVC.textFields?[0].text,
                characterName.count > 0,
                let showName = alertVC.textFields?[1].text,
                showName.count > 0
            {
                //RECHERCHER UN SHOW DANS LA LISTE DE SHOW
                //UNE FOIS TROUVER, AJOUTER UN NOUVEAU CHARACTER
                
                
                //                let show = TVShow(title: showName)
                //                show.addCharacter(withName: characterName)
                //                self.showList.append(show)
                //                self.tableView.insertSections([self.showList.count-1], with: .automatic)
            }
            
        }
        alertVC.addAction(okAction)
        
        alertVC.addAction(UIAlertAction(title: "Annuler", style: .cancel, handler: nil))
        
        present(alertVC, animated: true, completion: nil)
        
    }
    
    
    /*
     //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     //          FOOTER D'UNE SECTION
     
     // set view for footer
     override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
     
     //EXEMPLE : une frame complement grise
     //let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 40))
     
     //footerView.backgroundColor = UIColor.gray
     
     let buttom = UIButton(type: .contactAdd)
     buttom.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
     buttom.backgroundColor = UIColor.blue
     buttom.setTitle("ADD", for: UIControl.State.normal)
     buttom.addTarget(self, action: "Action", for: UIControl.Event.touchDown)
     
     let footerView = buttom
     
     
     
     
     return footerView
     }
     
     
     // set height for footer
     override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
     return 40
     }
     
     
     // FIN   FOOTER D'UNE SECTION
     
     //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     */
    
    
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        guard let selectedIndex = tableView.indexPathForSelectedRow else {
            return
        }
        
        if let characterVC = segue.destination as? MaterialDetailViewController,
            let show = tvShows.show(atIndex: selectedIndex.section) {
            characterVC.character = show.getIndex(index : selectedIndex.row)
            characterVC.showTitle = show.getName()
        }
        
    }
    
}
