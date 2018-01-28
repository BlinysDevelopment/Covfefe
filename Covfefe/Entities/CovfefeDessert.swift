//
//  CovfefeDessert.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/27/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import Foundation
import RealmSwift

class CovfefeDessert: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var imageData: Data?
    
    @objc dynamic var availableItems: UInt = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
