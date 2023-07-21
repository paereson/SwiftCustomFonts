//
//  MainViewController.swift
//  SwiftCustomFonts
//
//  Created by Michal Gruszkiewicz on 21/07/2023.
//

import UIKit

final class MainViewController: UIViewController {
    // MARK: - Properties
    
    let backedView = MainView()

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
    
    // MARK: - Funcs
    
    private func setupViews() {
        
        self.view = backedView
        
        backedView.mainStackView.addArrangedSubviews([
            backedView.firstLabel,
            backedView.secondLabel,
            backedView.thirdLabel,
            backedView.fourthLabel,
            backedView.fifthLabel
        ])
        
        backedView.scrollView.addSubviewWithoutAutoresizingMask(backedView.mainStackView)
        backedView.addSubviewWithoutAutoresizingMask(backedView.scrollView)
    }

    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            backedView.scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            backedView.scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            backedView.scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            backedView.scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            backedView.mainStackView.leadingAnchor.constraint(equalTo: backedView.scrollView.leadingAnchor, constant: 16),
            backedView.mainStackView.trailingAnchor.constraint(equalTo: backedView.scrollView.trailingAnchor, constant: 16),
            backedView.mainStackView.topAnchor.constraint(equalTo: backedView.scrollView.topAnchor, constant: 16),
            backedView.mainStackView.bottomAnchor.constraint(equalTo: backedView.scrollView.bottomAnchor),
            backedView.mainStackView.widthAnchor.constraint(equalTo: backedView.scrollView.widthAnchor)
        ])
    }
}
