//
//  BaseView.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/5/25.
//

import UIKit

class BaseView: UIView {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    private func configureView() {
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        backgroundColor = .backgroundPrimary
    }
    
    func setupConstraints() {
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
