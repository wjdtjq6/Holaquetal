//
//  UIView+Extensions.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/10/25.
//

import UIKit

extension UIView {
    func addSubViews(_ views: [UIView]) {
        views.forEach { addSubview($0) }
    }
}
