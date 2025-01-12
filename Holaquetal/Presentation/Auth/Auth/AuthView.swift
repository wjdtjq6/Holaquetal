//
//  AuthView.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/5/25.
//

import UIKit

final class AuthView: BaseView {
    
    let width = UIScreen.main.bounds.width - 50

    let appleButton = UIButton().then {
        $0.setBackgroundImage(UIImage(named: "appleLogin"), for: .normal)
    }
    let kakaoButton = UIButton().then {
        $0.setBackgroundImage(UIImage(named: "kakaoLogin"), for: .normal)
    }
    let emailButton = CustomButton(title: " 이메일로 계속하기").then {
        $0.setImage(UIImage(named: "email"), for: .normal)
    }
    let signupButton = UIButton().then {
        $0.setTitle("또는 새롭게 회원가입 하기", for: .normal)
        $0.setTitleColor(UIColor.black, for: .normal)
        $0.titleLabel?.font = Font.Title2.weight
    }
    
    override func setupUI() {
        super.setupUI()
        [appleButton, kakaoButton, emailButton, signupButton].forEach { addSubview($0) }
    }
    
    override func setupConstraints() {
        appleButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(safeAreaLayoutGuide).offset(30)
            make.width.equalTo(width)
        }
        kakaoButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(appleButton.snp.bottom).offset(15)
            make.width.equalTo(width)
        }
        emailButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(kakaoButton.snp.bottom).offset(15)
        }
        signupButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(emailButton.snp.bottom).offset(15)
        }
    }
}
