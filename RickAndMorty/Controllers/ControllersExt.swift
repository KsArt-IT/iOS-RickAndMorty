//
//  ControllersExt.swift
//  RickAndMorty
//
//  Created by KsArT on 16.08.2024.
//

import UIKit

extension UIViewController {

    func showAlert(_ title: String = "", message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}
