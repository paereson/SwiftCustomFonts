//
//  UIViewEx.swift
//  SwiftCustomFonts
//
//  Created by Michal Gruszkiewicz on 21/07/2023.
//

import UIKit

extension UIView {
    
    func addSubviewWithoutAutoresizingMask(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }
}
