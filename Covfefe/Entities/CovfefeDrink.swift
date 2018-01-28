//
//  CovfefeDrink.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/27/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import Foundation
import RealmSwift

class CovfefeDrink: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var imageData: Data?
    
    @objc dynamic var availableItems: Int = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
