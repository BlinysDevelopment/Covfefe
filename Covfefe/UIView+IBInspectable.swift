//
//  UIView+IBInspectable.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/27/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var masksToBounds: Bool {
        get {
            return layer.masksToBounds
        }
        set {
            layer.masksToBounds = newValue
        }
    }
}

extension CGColor {
    
    var uiColor: UIColor {
        return UIColor(cgColor: self)
    }
}
