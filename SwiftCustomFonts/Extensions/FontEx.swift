//
//  FontEx.swift
//  SwiftCustomFonts
//
//  Created by Michal Gruszkiewicz on 24/07/2023.
//

import SwiftUI

extension Font {
    
    /// Choose your font to set up
    /// - Parameters:
    ///   - font: Choose one of your font
    ///   - style: Make sure the style is available
    ///   - size: Use prepared sizes for your app
    ///   - isScaled: Check if your app accessibility prepared
    /// - Returns: Font ready to show
    static func customFont(
        font: CustomFonts,
        style: CustomFontStyle,
        size: CustomFontSize,
        isScaled: Bool = true) -> Font {
            
            let fontName: String = font.rawValue + style.rawValue
            
            return Font.custom(fontName, size: size.rawValue)
        }
}
