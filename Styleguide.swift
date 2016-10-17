//
//  Styleguide.swift
//
//  Created by Göksel Köksal on 18/06/16.
//  Copyright © 2016 Mangu. All rights reserved.
//

import UIKit

enum Color {
    static let black = UIColor.black
    static let tint = UIColor.green
}

enum Alpha {
    static let none     = CGFloat(0.0)
    static let veryLow  = CGFloat(0.05)
    static let low      = CGFloat(0.30)
    static let medium1  = CGFloat(0.40)
    static let medium2  = CGFloat(0.50)
    static let medium3  = CGFloat(0.60)
    static let high     = CGFloat(0.87)
    static let full     = CGFloat(1.0)
}

enum Font {
    static func withSize(_ size: CGFloat, weight: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: weight)
    }
}

extension TextStyle {
    
    static let body = TextStyle(
        font: Font.withSize(15.0, weight: UIFontWeightRegular),
        color: Color.black
    )
    
    static let title = TextStyle(
        font: Font.withSize(20.0, weight: UIFontWeightLight),
        color: Color.black
    )
}

extension TextStyle {
    
    enum Button {
        static let action = TextStyle(
            font: Font.withSize(16.0, weight: UIFontWeightMedium),
            color: Color.tint
        )
    }
}
