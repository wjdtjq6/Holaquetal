//
//  CustomButton.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/3/25.
//

import UIKit
import Then

final class CommonButton: UIButton {
    
    init(title: String, foreColor: UIColor? = .none, backColor: UIColor? = .accent) {
        super.init(frame: .zero)
        self.configuration = .filled()
        setTitle(title, for: .normal)
        titleLabel?.font = Font.Title2.weight
        backgroundColor = backColor
        //layer.borderColor = foreColor?.cgColor
        if let _ = foreColor {
            layer.borderWidth = 2
        }
        layer.cornerRadius = 10
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
