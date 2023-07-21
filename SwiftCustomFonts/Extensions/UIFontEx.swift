//
//  UIFontEx.swift
//  SwiftCustomFonts
//
//  Created by Michal Gruszkiewicz on 21/07/2023.
//

import UIKit

enum CustomFontStyle: String {
    case bold = "-bold"
    case light = "-light"
    case medium = "-medium"
    case regular = "-regular"
    case semiBold = "-semiBold"
    case thin = "-thin"
}

enum CustomFontSize: CGFloat {
    case h0 = 36.0
    case h1 = 32.0
    case h2 = 20.0
    case h3 = 16.0
    case h4 = 8.0
}

protocol CustomFont {
    var fontName: String { get }
    var availableStyles: [CustomFontStyle] { get }
}

extension UIFont {
    
    static func customFont(
        font: CustomFonts,
        style: CustomFontStyle,
        size: CustomFontSize,
        isScaled: Bool = true) -> UIFont {
            
            var fontName: String = font.rawValue + style.rawValue
            
            guard let font = UIFont(name: fontName, size: size.rawValue) else {
                debugPrint("Font can't be loaded")
                return UIFont.systemFont(ofSize: size.rawValue)
            }
            
            return isScaled ? UIFontMetrics.default.scaledFont(for: font) : font
        }
}
