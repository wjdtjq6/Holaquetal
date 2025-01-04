//
//  Font.swift
//  Holaquetal
//
//  Created by 소정섭 on 1/3/25.
//

import UIKit

enum Font {
    case Title1
    case Title2
    case BodyBold
    case Body
    case Capition
    
    var font: UIFont {
        switch self {
        case .Title1:
            return UIFont.systemFont(ofSize: 22, weight: .bold)
        case .Title2:
            return UIFont.systemFont(ofSize: 14, weight: .bold)
        case .BodyBold:
            return UIFont.systemFont(ofSize: 13, weight: .bold)
        case .Body:
            return UIFont.systemFont(ofSize: 13, weight: .regular)
        case .Capition:
            return UIFont.systemFont(ofSize: 12, weight: .regular)
        }
    }
    
    var lineHeight: CGFloat {
        switch self {
        case .Title1: 30
        case .Title2: 20
        case .BodyBold, .Body, .Capition: 18
        }
    }
}
