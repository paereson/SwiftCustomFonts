//
//  MainView.swift
//  SwiftCustomFonts
//
//  Created by Michal Gruszkiewicz on 21/07/2023.
//

import UIKit

final class MainView: UIView {
    
    // MARK: - UI Objects
    let scrollView = UIScrollView()
    let mainStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 16
        
        return stackView
    }()
    
    let firstLabel: UILabel = {
        var l = UILabel()
        l.text = "This is test label"
        l.numberOfLines = 0
        l.textAlignment = .left
        l.font = .customFont(
            font: .tiltPrism,
            style: .regular,
            size: .h0)
        return l
    }()
    
    let secondLabel: UILabel = {
        var l = UILabel()
        l.text = "This is test label"
        l.numberOfLines = 0
        l.textAlignment = .left
        l.font = .customFont(
            font: .tiltPrism,
            style: .regular,
            size: .h0)
        return l
    }()
    
    let thirdLabel: UILabel = {
        var l = UILabel()
        l.text = "This is test label"
        l.numberOfLines = 0
        l.textAlignment = .left
        l.font = .customFont(
            font: .tiltPrism,
            style: .regular,
            size: .h0)
        return l
    }()
    
    let fourthLabel: UILabel = {
        var l = UILabel()
        l.text = "This is test label"
        l.numberOfLines = 0
        l.textAlignment = .left
        l.font = .customFont(
            font: .tiltPrism,
            style: .regular,
            size: .h0)
        return l
    }()
    
    let fifthLabel: UILabel = {
        var l = UILabel()
        l.text = "This is test label"
        l.numberOfLines = 0
        l.textAlignment = .left
        l.font = .customFont(
            font: .tiltPrism,
            style: .regular,
            size: .h0)
        return l
    }()
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setup()
    }
    
    func setup() {
        backgroundColor = .white
    }
}
