//
//  OnboardingViewController.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/4/25.
//

import UIKit
import SnapKit

class OnboardingViewController: UIViewController {
    
    let onboardingView = OnboardingView()
    var viewModel = OnboardingViewModel()
    
    override func loadView() {
        view = onboardingView
    }
    
    override func viewDidLoad() {
        onboardingView.startButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    @objc func buttonClicked() {
        let vc = AuthViewController()
        vc.modalPresentationStyle = .pageSheet//TODO: UISheetPresentationController
        present(vc, animated: true)
    }
}
