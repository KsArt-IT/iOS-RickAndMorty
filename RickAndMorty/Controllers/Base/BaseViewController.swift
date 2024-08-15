//
//  BaseViewController.swift
//  RickAndMorty
//
//  Created by KsArT on 14.08.2024.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        constraintViews()
        configureAppearance()
    }
}

@objc extension BaseViewController {

    func setupViews() {}

    func constraintViews() {}

    func configureAppearance() {
        view.backgroundColor = .background
    }
}
