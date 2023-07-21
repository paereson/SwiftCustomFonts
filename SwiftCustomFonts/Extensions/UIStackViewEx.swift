//
//  UIStackViewEx.swift
//  SwiftCustomFonts
//
//  Created by Michal Gruszkiewicz on 21/07/2023.
//
import UIKit

extension UIStackView {
    
    func addArrangedSubviews(_ subviews: [UIView]) {
        subviews.forEach { addArrangedSubview($0) }
    }
}
