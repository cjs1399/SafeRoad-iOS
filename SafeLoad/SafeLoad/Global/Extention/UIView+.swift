//
//  UIView+.swift
//  SafeLoad
//
//  Created by 천성우 on 4/8/24.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach {
            self.addSubview($0)
        }
    }
}
