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
        
    }
}
