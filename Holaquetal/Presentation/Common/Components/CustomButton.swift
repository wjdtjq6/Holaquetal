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
    
    init(title: String, foreColor: UIColor, backColor: UIColor, textColor: UIColor, shadowColor: CGColor?) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        titleLabel?.font = Font.Body.font
        backgroundColor = backColor
        setTitleColor(foreColor, for: .normal)
        layer.cornerRadius = 20
        layer.borderWidth = 2
        layer.shadowColor = shadowColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
