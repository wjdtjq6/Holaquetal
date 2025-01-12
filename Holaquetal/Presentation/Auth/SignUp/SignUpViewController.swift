//
//  SignUpViewController.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/2/25.
//

import UIKit

class SignUpViewController: UIViewController {
    
    let uiView = SignUpView()
    let viewModel = SignUpViewModel()
    
    lazy var xButton = UIBarButtonItem(image: UIImage(named: "close"), style: .plain, target: self, action: #selector(xClicked)).then {
        $0.tintColor = .black
    }
    
    override func loadView() {
        view = uiView
    }

    override func viewDidLoad() {
        navigationItem.title = "회원가입"
        navigationItem.leftBarButtonItem = xButton
        navigationController?.navigationBar.backgroundColor = .backgroundSecondary
    }
    
    @objc func xClicked() {
        view.window?.rootViewController?.dismiss(animated: true)
    }
}
