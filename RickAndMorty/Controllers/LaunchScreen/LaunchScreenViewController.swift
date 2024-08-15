//
//  LaunchScreenViewController.swift
//  RickAndMorty
//
//  Created by KsArT on 14.08.2024.
//

import UIKit

class LaunchScreenViewController: BaseViewController {

    private let logo = LaunchScreenView()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

extension LaunchScreenViewController {

    override func setupViews() {
        super.setupViews()

        view.addSubview(logo)
    }
    override func constraintViews() {
        logo.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: view.topAnchor),
            logo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            logo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            logo.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
