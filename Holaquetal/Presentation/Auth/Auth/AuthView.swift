//
//  AuthView.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/5/25.
//

import UIKit

final class AuthView: BaseView {
    
    private let appleButton = UIButton().then {
        $0.setImage(UIImage(named: "thin"), for: .normal)//TODO: 이미지 다운
    }
    private let kakaoButton = UIButton().then {
        $0.setImage(UIImage(named: "thick"), for: .normal)//TODO: 이미지 다운
        //$0.tintColor = .systemYellow//delete
    }
    private let emailButton = CommonButton(title: " 이메일로 계속하기").then {
        $0.setImage(UIImage(named: "email"), for: .normal)
    }
    //TODO: commonbutton 혹은 uibutton으로 수정Au
    private let signupButton = CommonButton(title: "또는", backColor: .accent).then {
        $0.setTitle(" 새롭게 회원가입 하기", for: .normal)
    }
    override func setupUI() {
        super.setupUI()
        
        addSubViews([appleButton, kakaoButton, emailButton, signupButton])

        appleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide).offset(10)
            make.width.equalTo(280)
            make.height.equalTo(40)
        }
        
        kakaoButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(appleButton.snp.bottom).offset(10)
            make.width.equalTo(280)
            make.height.equalTo(40)
        }
        
        emailButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(kakaoButton.snp.bottom).offset(10)
            make.width.equalTo(280)
            make.height.equalTo(40)
        }
        
        signupButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(emailButton.snp.bottom).offset(10)
            make.width.equalTo(280)
            make.height.equalTo(40)
        }
    }
}
