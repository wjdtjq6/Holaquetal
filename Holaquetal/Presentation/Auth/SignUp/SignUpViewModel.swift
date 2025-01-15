//
//  SignUpViewModel.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/2/25.
//

import Foundation

class SignUpViewModel {
    var email = ""
    var checkEmail = false
    var nick = ""
    var phone = ""
    var password = ""
    var checkPW = ""

    func isEmailVailid() -> Bool {
        return email.contains("@") && email.contains(".com") && (email.count >= 10)
    }
    
    func isCheckEmail() -> Bool {
        return true
    }
    func isNickValid() -> Bool {
        return nick.count > 0 && nick.count <= 30
    }
    
    func isPhoneValid() -> Bool {
        return phone.starts(with: "01") && phone.count == 11
    }
    
    func isPasswordValid() -> Bool {
        return password.count >= 8 && password.contains("[0-9]+[A-Za-z]+[!@#$%^&*()-=+] [!@$%^&+=]")
    }
    
    func isCheckPWValid() -> Bool {
        return password == checkPW
    }
}
