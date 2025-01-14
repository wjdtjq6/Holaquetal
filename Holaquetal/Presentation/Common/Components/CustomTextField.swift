//
//  CustomTextField.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/3/25.
//

import UIKit

final class CustomTextField: UITextField {
    
    private let width = UIScreen.main.bounds.width - 50
    private let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)

    init(text: String) {
        super.init(frame: .zero)
        placeholder = text
        backgroundColor = .backgroundSecondary
        clipsToBounds = true
        layer.cornerRadius = 10
        font = Font.Body.weight
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: width, height: 44)
    }
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
