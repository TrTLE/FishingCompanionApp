//
//  show.swift
//  FishingCompanionApp
//
//  Created by Admin on 05/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import Foundation

class TvShow {
    private var name: String
    private var charactersList: [TvCharacter] = []
    
    init(pname: String) {
        self.name = pname
    }
    
    func addCharacter(name: String) {
        charactersList.append(TvCharacter(pname: name))
    }
    
    func count() -> Int {
        return charactersList.count
    }
    
    func getIndex (index: Int) -> TvCharacter {
        return charactersList[index]
    }
    
    func getName() -> String {
        return self.name
    }
    
    func deleteCharacter(index: Int) -> Bool {
        guard index >= 0 && index < count() else {
            return false
        }

        charactersList.remove(at: index)
        return true
    }
}
