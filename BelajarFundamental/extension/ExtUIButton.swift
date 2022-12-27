//
//  ExtUIButton.swift
//  BelajarFundamental
//
//  Created by yopa bagus on 26/12/22.
//

import Foundation
import UIKit

extension UIButton {
    
    func addBorder(radius: CGFloat, width: CGFloat, borderColor: CGColor, background: UIColor = .systemTeal ) {
        self.backgroundColor = background
        self.layer.cornerRadius = radius
        self.layer.borderWidth = width
        self.layer.borderColor = borderColor
       
    }
}
