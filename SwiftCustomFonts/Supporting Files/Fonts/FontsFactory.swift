//
//  FontsFactory.swift
//  SwiftCustomFonts
//
//  Created by Michal Gruszkiewicz on 22/07/2023.
//

import Foundation

enum CustomFonts: String {
    case lato = "Lato"
    case openSans = "OpenSans"
    case oswald = "Oswald"
    case roboto = "Roboto"
    case tiltPrism = "TiltPrism"
}

enum CustomFontStyle: String {
    case bold = "-Bold"
    case light = "-Light"
    case medium = "-Medium"
    case regular = "-Regular"
    case semiBold = "-SemiBold"
    case thin = "-Thin"
}

enum CustomFontSize: CGFloat {
    case h0 = 36.0
    case h1 = 32.0
    case h2 = 20.0
    case h3 = 16.0
    case h4 = 8.0
}
