//
//  SignUpViewController.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/2/25.
//

import UIKit

final class SignUpViewController: UIViewController {
    
    private let uiView = SignUpView()
    private let viewModel = SignUpViewModel()
    
    private lazy var xButton = UIBarButtonItem(image: UIImage(named: "close"), style: .plain, target: self, action: #selector(xClicked)).then {
        $0.tintColor = .black
    }
    
    override func loadView() {
        view = uiView
    }

    override func viewDidLoad() {
        navigationItem.title = "회원가입"
        navigationItem.leftBarButtonItem = xButton
        navigationController?.navigationBar.backgroundColor = .backgroundSecondary
        setUpBindings()
    }
    
    private func setUpBindings() {
        uiView.emailTextField.addTarget(self, action: #selector(emailDidChange), for: .editingChanged)
        uiView.nickTextField.addTarget(self, action: #selector(nickDidChange), for: .editingChanged)
        uiView.duplicatButton.addTarget(self, action: #selector(test), for: .touchUpInside)
    }
    
    @objc private func emailDidChange() {
        viewModel.email = uiView.emailTextField.text ?? ""
//        updateDuplicateButtonState()
//        updateSignUpButtonState()
    }
    @objc private func nickDidChange() {
        viewModel.nick = uiView.nickTextField.text ?? ""
//        updateSignUpButtonState()
    }
    @objc private func test() {
        viewModel.checkEmail.toggle()
//        updateDuplicateButtonState()
        print("중복버튼눌림")
    }
    
//    private func updateDuplicateButtonState() {
//        uiView.duplicatButton.updateState(isEnabled: viewModel.isEmailVailid())
//    }
//    private func updateSignUpButtonState() {
//        uiView.signupButton.isEnabled = viewModel.isEmailVailid() && viewModel.isNickValid() && viewModel.isPhoneValid() && viewModel.isPasswordValid() && viewModel.isCheckPWValid()
//    }
    
    @objc func xClicked() {
        view.window?.rootViewController?.dismiss(animated: true)
    }
}
