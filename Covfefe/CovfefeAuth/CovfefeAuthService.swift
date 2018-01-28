//
//  CovfefeAuthService.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/28/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import Foundation

enum CovfefeAuthError {
    case invalidCredentials
}

enum CovfefeAuthResult {
    case success
    case failure(CovfefeAuthError)
}

protocol CovfefeAuthService {
    
    func auth(login: String, password: String) -> CovfefeAuthResult
}
