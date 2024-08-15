//
//  BaseView.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        constraintViews()
        configureAppearance()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupViews()
        constraintViews()
        configureAppearance()
    }

}

@objc extension BaseView {
    func setupViews() {}
    func constraintViews() {}
    func configureAppearance() {}
}
