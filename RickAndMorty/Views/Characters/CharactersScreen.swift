//
//  CharactersScreen.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import UIKit

final class CharactersScreen: BaseView {

    private let tableView = UITableView()
    // pull to refresh
    private let refreshControl: UIRefreshControl = {
        let view = UIRefreshControl()
        view.attributedTitle = R.Strings.dataUpdating
        return view
    }()
}

extension CharactersScreen {
    override func setupViews() {
        super.setupViews()

        addSubview(tableView)
    }

    override func constraintViews() {
        super.constraintViews()

        tableView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
