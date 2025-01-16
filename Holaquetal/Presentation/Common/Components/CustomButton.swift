//
//  CustomButton.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/3/25.
//

import UIKit
import Then

final class CustomButton: UIButton {
    
    private let width = UIScreen.main.bounds.width - 50
    
    init(title: String, foreColor: UIColor? = .none, backColor: UIColor? = .accent, width: CGFloat? = nil, height: CGFloat? = 44) {
        super.init(frame: .zero)
        
        translatesAutoresizingMaskIntoConstraints = true
        
        setTitle(title, for: .normal)
        titleLabel?.font = Font.Title2.weight
        backgroundColor = backColor
        if let _ = foreColor {
            layer.borderWidth = 2
        }
        layer.cornerRadius = 10
        clipsToBounds = true
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: width, height: 44)
    }
    
    func updateState(isEnabled: Bool) {
        self.isEnabled = isEnabled
        backgroundColor = isEnabled ? .accent : .grayCustom
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
