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

        // iOS 15 이상에서 동작하는 sheetPresentationController 설정
        if let sheet = vc.sheetPresentationController {
            if #available(iOS 16.0, *) {
                sheet.detents = [.custom { _ in 250}]
            } else {
                sheet.detents = [.medium()]
            }
            sheet.prefersGrabberVisible = true // 손잡이 표시
        }

        vc.modalPresentationStyle = .pageSheet

        present(vc, animated: true)
    }
}
