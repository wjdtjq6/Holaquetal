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

    override func loadView() {
        view = onboardingView
    }
    
    override func viewDidLoad() {
        
    }
}
