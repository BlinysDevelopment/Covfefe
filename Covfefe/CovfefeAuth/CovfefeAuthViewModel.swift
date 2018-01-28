//
//  CovfefeAuthViewModel.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/28/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import Foundation

class CovfefeAuthViewModel {
    
    var view: CovfefeAuthViewController?
    
    var login: String?
    var password: String?
        
    private let authService: CovfefeAuthService = CovfefeUserAuthService()
    
    func performLogin() {
        
        guard let login = login, let password = password else {
            return
        }
        
        DispatchQueue.global(qos: .userInteractive).async { [weak self] in
            guard let `self` = self else { return }
            let result = self.authService.auth(login: login, password: password)
            switch result {
            case .success(let user):
                user.isAdmin ? self.handleAdminLogin() : self.handleUserLogin()
                
            case .failure(let error):
                self.handleLoginFailure()
            }
        }
    }
    
    private func handleUserLogin() {
        
    }
    
    private func handleAdminLogin() {
        
    }
    
    private func handleLoginFailure() {
        DispatchQueue.main.async { [weak self] in
            self?.view?.showLoginFailedAlert()
        }
    }
}
