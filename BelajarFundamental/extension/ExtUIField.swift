//
//  ExtensionField.swift
//  BelajarFundamental
//
//  Created by yopa bagus on 24/12/22.
//

import Foundation
import UIKit

extension UITextField {

    func useUnderline() {

        let bottomLine = CALayer()
                
        bottomLine.frame = CGRect(x: 0.0, y: self.bounds.height + 3, width: self.bounds.width, height: 1.5)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
    }
}
