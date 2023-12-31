//
//  UIFontEx.swift
//  SwiftCustomFonts
//
//  Created by Michal Gruszkiewicz on 21/07/2023.
//

import UIKit

extension UIFont {
    
    /// Choose your font to set up
    /// - Parameters:
    ///   - font: Choose one of your font
    ///   - style: Make sure the style is available
    ///   - size: Use prepared sizes for your app
    ///   - isScaled: Check if your app accessibility prepared
    /// - Returns: UIFont ready to show
    static func customFont(
        font: CustomFonts,
        style: CustomFontStyle,
        size: CustomFontSize,
        isScaled: Bool = true) -> UIFont {
            
            let fontName: String = font.rawValue + style.rawValue
            
            guard let font = UIFont(name: fontName, size: size.rawValue) else {
                debugPrint("Font can't be loaded")
                return UIFont.systemFont(ofSize: size.rawValue)
            }
            
            return isScaled ? UIFontMetrics.default.scaledFont(for: font) : font
        }
}
