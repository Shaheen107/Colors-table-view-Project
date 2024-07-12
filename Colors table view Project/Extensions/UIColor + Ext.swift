//
//  UIColor + Ext.swift
//  Colors table view Project
//
//  Created by Rizwan on 15/07/2024.
//

import UIKit

extension UIColor {
    
    static func random() -> UIColor{
        let randomColor = UIColor(displayP3Red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1 )
        return randomColor
    }
    
}
