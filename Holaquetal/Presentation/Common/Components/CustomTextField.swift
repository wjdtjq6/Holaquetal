//
//  CustomTextField.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/3/25.
//

import UIKit

final class CustomTextField: UITextField {
    
    let width = UIScreen.main.bounds.width - 50
    
    init(text: String) {
        super.init(frame: .zero)
        placeholder = "   " + text
        backgroundColor = .backgroundSecondary
        clipsToBounds = true
        layer.cornerRadius = 10
        font = Font.Body.weight
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: width, height: 44)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
