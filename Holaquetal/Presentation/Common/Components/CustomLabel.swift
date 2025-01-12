//
//  CommonLabel.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/11/25.
//

import UIKit

final class CustomLabel: UILabel {
    
    let width = UIScreen.main.bounds.width - 50
    
    init(texts: String) {
        super.init(frame: .zero)
        text = texts
        font = Font.BodyBold.weight
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: width, height: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


