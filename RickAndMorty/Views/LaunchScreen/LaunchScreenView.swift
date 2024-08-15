//
//  LaunchScreenView.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import UIKit

final class LaunchScreenView: BaseView {

    private let logo: UIImageView = {
        let view = UIImageView()
        view.image = R.Image.logo
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        return view
    }()
    private let launchScreen: UIImageView = {
        let view = UIImageView()
        view.image = R.Image.launchScreen
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        return view
    }()

}

extension LaunchScreenView {

    override func setupViews() {
        super.setupViews()

        addSubview(launchScreen)
        addSubview(logo)
    }

    override func constraintViews() {
        launchScreen.translatesAutoresizingMaskIntoConstraints = false
        logo.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            launchScreen.topAnchor.constraint(equalTo: topAnchor),
            launchScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            launchScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            launchScreen.bottomAnchor.constraint(equalTo: bottomAnchor),

            logo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.large),
            logo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -Constants.large),
            logo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.15),
            logo.heightAnchor.constraint(equalTo: logo.widthAnchor),
        ])
    }
}
