//
//  CovfefeUser.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/28/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import Foundation
import RealmSwift

class CovfefeUser: Object {
    
    @objc dynamic var login: String = ""
    @objc dynamic var passwordMD5: String = ""
    
    @objc dynamic var isAdmin: Bool = false
}
