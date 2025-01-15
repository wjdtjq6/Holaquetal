//
//  SignUpView.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/2/25.
//

import UIKit

final class SignUpView: BaseView {
    
    //let width = UIScreen.main.bounds.width - 50
    
    let emailLabel = CustomLabel(texts: "이메일")
    let nickLabel = CustomLabel(texts: "닉네임")
    let phoneLabel = CustomLabel(texts: "연락처")
    let pwLabel = CustomLabel(texts: "비밀번호")
    let pwCheckLabel = CustomLabel(texts: "비밀번호 확인")
    
    let emailTextField = CustomTextField(text: "이메일을 입력하세요")
    let nickTextField = CustomTextField(text: "닉네임을 입력하세요")
    let phoneTextField = CustomTextField(text: "전화번호를 입력하세요")
    let pwTextField = CustomTextField(text: "비밀번호를 입력하세요")
    let pwCheckTextField = CustomTextField(text: "비밀번호를 한 번 더 입력하세요")
    
    let duplicatButton = CustomButton(title: "중복 확인", backColor: .grayCustom)
    
    let signupButton = CustomButton(title: "가입하기", backColor: .grayCustom)
    
    override func setupUI() {
        super.setupUI()
        [emailLabel, nickLabel, phoneLabel, pwLabel, pwCheckLabel, emailTextField, nickTextField, phoneTextField, pwTextField, pwCheckTextField, duplicatButton, signupButton].forEach { addSubview($0) }
    }
    
    override func setupConstraints() {
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
        }
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(10)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
            make.width.equalTo(safeAreaLayoutGuide).offset(-150)
        }
        duplicatButton.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(10)
            make.leading.equalTo(emailTextField.snp.trailing).offset(10)
            make.trailing.equalTo(safeAreaLayoutGuide).inset(20)
        }
        
        nickLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
        }
        nickTextField.snp.makeConstraints { make in
            make.top.equalTo(nickLabel.snp.bottom).offset(10)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
        }
        
        phoneLabel.snp.makeConstraints { make in
            make.top.equalTo(nickTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
        }
        phoneTextField.snp.makeConstraints { make in
            make.top.equalTo(phoneLabel.snp.bottom).offset(10)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
        }
        
        pwLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
        }
        pwTextField.snp.makeConstraints { make in
            make.top.equalTo(pwLabel.snp.bottom).offset(10)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
        }
        
        pwCheckLabel.snp.makeConstraints { make in
            make.top.equalTo(pwTextField.snp.bottom).offset(20)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
        }
        pwCheckTextField.snp.makeConstraints { make in
            make.top.equalTo(pwCheckLabel.snp.bottom).offset(10)
            make.leading.equalTo(safeAreaLayoutGuide).offset(20)
        }
        
        signupButton.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
    }
}
