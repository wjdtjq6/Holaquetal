//
//  SignUpViewModel.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/2/25.
//

import Foundation

class SignUpViewModel {
    //이메일 상태 저장할 변수
    var email = "" {
        //값이 변경될 때 마다 실행
        didSet {
            checkEmail = isEmailVailid() //이메일이 유효한지 검사하고 결과 저장
        }
    }
    //이메일이 유효한지 여부를 저장
    var checkEmail = false
    var nick = ""
    var phone = ""
    var password = ""
    var checkPW = ""
    
    //이메일 유횻헝 검사 함수
    func isEmailVailid() -> Bool {
        return email.contains("@") && email.contains(".com") && (email.count >= 10)
    }

    func isNickValid() -> Bool {
        return nick.count > 0 && nick.count <= 30
    }
    
    func isPhoneValid() -> Bool {
        return phone.starts(with: "01") && phone.count == 11
    }
    
    func isPasswordValid() -> Bool {
        return password.count >= 8 && password.contains("[0-9]+[A-Za-z]+[!@#$%^&*()-=+]")
    }
    
    func isCheckPWValid() -> Bool {
        return password == checkPW
    }
}
