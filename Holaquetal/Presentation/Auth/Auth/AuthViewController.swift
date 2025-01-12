//
//  AuthViewController.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/5/25.
//

import UIKit

final class AuthViewController: UIViewController {
    
    private let authView = AuthView()
    private let viewModel = AuthViewModel()
    
    override func loadView() {
        view = authView
    }
    
    override func viewDidLoad() {
        authView.appleButton.addTarget(self, action: #selector(appleClicked), for: .touchUpInside)
        authView.kakaoButton.addTarget(self, action: #selector(kakaoClicked), for: .touchUpInside)
        authView.emailButton.addTarget(self, action: #selector(emailClicked), for: .touchUpInside)
        authView.signupButton.addTarget(self, action: #selector(signupClicked), for: .touchUpInside)
    }
    
    @objc func appleClicked() {
        
    }
    
    @objc func kakaoClicked() {
        
    }
    
    @objc func emailClicked() {
        
    }
    
    @objc func signupClicked() {
        let vc = SignUpViewController()
        let nav = UINavigationController(rootViewController: vc)
        
        if let sheet = nav.sheetPresentationController {
            sheet.detents = [.large()]
            sheet.prefersGrabberVisible = true
        }
        present(nav, animated: true)
    }
}
