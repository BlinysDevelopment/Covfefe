//
//  CovfefeMenuViewController.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/27/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

final class CovfefeMenuViewController: UIViewController {
    
    // MARK: - Private types
    
    private enum SectionType {
        case controls
        case items
    }
    
    private enum RowType {
        case itemsCategorySwitch
        case item
    }
    
    private struct Section {
        var type: SectionType
        var rows: [RowType]
    }
    
    private enum MenuCategory {
        case drinks
        case dessert
    }
    
    // MARK: - Private properties
    
    private var sections = [Section]()
    private var selectedMenuCategory = MenuCategory.drinks
    
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - Rx
    
    private let disposeBag = DisposeBag()
    
    // MARK: - Data
    
//    private var items: Observable<CoffeeListItem>?
    
    // MARK: - @override UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
    }
    
    private func setupController() {
        navigationController?.navigationBar.prefersLargeTitles = true
//        UINavigationBar.appearance().largeTitleTextAttributes = [
//            NSAttributedStringKey.foregroundColor: UIColor.white
//        ]
    }
}

extension CovfefeMenuViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        
        switch sections[indexPath.section].rows[indexPath.row] {
        case .itemsCategorySwitch:
            let identifier = String(describing: CovfefeMenuItemsCategoryControlCell.self)
            guard let categoryControlCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? CovfefeMenuItemsCategoryControlCell else {
                preconditionFailure("Cell at indexPath \(indexPath) should be of type CovfefeMenuItemsCategoryControlCell")
            }
            
            switch selectedMenuCategory {
            case .drinks:
                categoryControlCell.category = .drinks
                
            case .dessert:
                categoryControlCell.category = .dessert
            }
            
            cell = categoryControlCell
            
        case .item:
            fatalError()
        }
        
        return cell
    }
    
}

extension CovfefeMenuViewController: UITableViewDelegate {
    
}
