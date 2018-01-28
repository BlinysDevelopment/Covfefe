//
//  CovfefeUserAuthService.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/28/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import Foundation
import RealmSwift

class CovfefeUserAuthService: CovfefeAuthService {
    
    func auth(login: String, password: String) -> CovfefeAuthResult {
        let realm = try! Realm()
        let predicate = NSPredicate(format: "login = %@ AND passwordMD5 = %@", login, password.md5)
        let users = realm.objects(CovfefeUser.self).filter(predicate)
        
        let result: CovfefeAuthResult
        if !users.isEmpty {
            result = CovfefeAuthResult.success
        }
        else {
            result = CovfefeAuthResult.failure(CovfefeAuthError.invalidCredentials)
        }
        
        return result
    }
}
