//
//  CoffeeListItem.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/27/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import UIKit

protocol CovfefeMenuItem {
    var name: String { get }
    var description: String { get }
    var price: Decimal { get }
    var image: UIImage? { get }
}

struct CovfefeMenuItemDrink: CovfefeMenuItem {
    var name: String
    var price: Decimal
    var description: String
    var image: UIImage?
}

struct CovfefeMenuItemDessert: CovfefeMenuItem {
    var name: String
    var description: String
    var price: Decimal
    var image: UIImage?
}
