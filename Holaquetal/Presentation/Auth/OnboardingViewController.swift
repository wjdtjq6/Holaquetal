//
//  OnboardingViewController.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/4/25.
//

import UIKit
import Then
import SnapKit

class OnboardingViewController: UIViewController {
    
    let image = UIImageView().then {
        $0.image = UIImage(named: "iHola!")
    }
    
    override func viewDidLoad() {
        image.addSubview(image)
    }
}
