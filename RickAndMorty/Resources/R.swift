//
//  R.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import UIKit

enum R {

    enum Images {
        static let logo = UIImage(named: "Logo") ?? UIImage()
        static let launchScreen = UIImage(named: "LaunchScreen") ?? UIImage()
    }

    enum Strings {
        static let dataUpdating = NSAttributedString(
            string: String(localized: "DataUpdating"),
            attributes: [
                NSAttributedString.Key.foregroundColor: UIColor.secondBackground.cgColor,
            ]
        )
    }
}
