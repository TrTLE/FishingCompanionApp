//
//  BddProvider.swift
//  FishingCompanionApp
//
//  Created by Admin on 19/06/2019.
//  Copyright © 2019 Alexis PAQUIN. All rights reserved.
//

import Foundation
import RealmSwift

class DataBaseProvider {
    
    private var realm : Realm
    
    init() {
        try! realm = Realm()
    }
}
