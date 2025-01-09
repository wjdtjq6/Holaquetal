//
//  OnboardingView.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/5/25.
//

import UIKit
import SnapKit
import Then

final class OnboardingView: BaseView {
    
    private let image = UIImageView().then {
        $0.image = UIImage(named: "iHola!")
    }
    let startButton = CommonButton(title: "시작하기")
    
    override func setupUI() {
        super.setupUI()
        
        addSubview(image)
        addSubview(startButton)
        
        image.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(300)
        }
        startButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide).inset(20)
            make.width.equalTo(280)
            make.height.equalTo(40)
        }
    }
}
