//
//  CovfefeAuthViewController.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/28/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import Eureka

class CovfefeAuthViewController: FormViewController {

    var viewModel: CovfefeAuthViewModel? = CovfefeAuthViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
        buildForm()
        viewModel?.view = self
    }
    
    private func setupController() {
        navigationItem.title = "Вход"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    private func buildForm() {
        
        let loginRow = TextRow() { row in
            row.title = "Логин"
            row.placeholder = "Введите логин"
        }
        .onChange { [weak self] row in
            self?.viewModel?.login = row.value
        }
        
        let passwordRow = PasswordRow() { row in
            row.title = "Пароль"
            row.placeholder = "Введите пароль"
        }
        .onChange { [weak self] row in
            self?.viewModel?.password = row.value
        }
        
        let credentialsSection = Section()
        
        credentialsSection <<< loginRow
        credentialsSection <<< passwordRow
        
        let loginButtonRow = ButtonRow() { row in
            row.title = "Войти"
        }
        .onCellSelection { [weak self] _, _ in
            self?.viewModel?.performLogin()
        }
        
        let actionSection = Section()
        
        actionSection <<< loginButtonRow
        
        form +++ credentialsSection
        form +++ actionSection
    }
    
    func showLoginFailedAlert() {
        let alert = UIAlertController(title: "Не удалось войти", message: "Неверный логин и/или пароль", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
