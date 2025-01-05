//
//  CustomButton.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/3/25.
//

import UIKit
import Then

class CommonButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(title: String, foreColor: UIColor, backColor: UIColor, textColor: UIColor) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        titleLabel?.font = Font.Title2.font
        backgroundColor = backColor
        setTitleColor(foreColor, for: .normal)
        layer.borderColor = foreColor.cgColor
        if foreColor != UIColor.white {
            layer.borderWidth = 2
        }
        layer.cornerRadius = 15
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
