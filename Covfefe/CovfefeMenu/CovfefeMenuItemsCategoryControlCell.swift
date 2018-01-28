//
//  CovfefeMenuItemsCategorySwitchCell.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/27/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import UIKit

final class CovfefeMenuItemsCategoryControlCell: UITableViewCell {

    enum Category: Int {
        case drinks = 0
        case dessert
    }
    
    @IBOutlet private weak var categoryControl: UISegmentedControl!
    
    var category: Category = .drinks {
        didSet {
            categoryControl.selectedSegmentIndex = category.rawValue
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
