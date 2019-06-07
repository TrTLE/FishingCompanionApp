//
//  TvShowListe.swift
//  FishingCompanionApp
//
//  Created by Admin on 05/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import Foundation

class TvShowList {
    private var showList: [TvShow]
    
    init() {
        
        let south_park = TvShow(pname: "South Park")
        south_park.addCharacter(name: "CARTEMAN")
        south_park.addCharacter(name: "KENNY")
        south_park.addCharacter(name: "KYLE")
        south_park.addCharacter(name: "STAN")
        
        let a_team = TvShow(pname: "A TEAM")
        a_team.addCharacter(name: "John 'Hannibal' Smith")
        a_team.addCharacter(name: "MT T.")
        
        showList = [south_park,a_team]
    }
    
    var showCount: Int {
        return showList.count
    }
    
    func addShow(withName name:String) -> TvShow {
        let show = TvShow(pname: name)
        showList.append(show)
        return show
    }
    
    func show(atIndex index:Int) -> TvShow? {
        guard index >= 0 && index < showList.count else {
            return nil
        }
        
        return showList[index]
    }
    
    private func findShow(name: String) -> TvShow? {
        return showList.first(where: { $0.getName() == name })
    }
    
    func addCharacterToShow(showName: String, characterName: String) -> Bool {
        return false
    }
}
