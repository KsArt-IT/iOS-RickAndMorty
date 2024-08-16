//
//  CharacterViewController.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import UIKit

class CharacterViewController: BaseViewController {

    private let repository: CharacterRepository?
    private var characters: [Character] = []
    private var task: Task<(), Never>?

    private let characterScreen = CharactersScreen()
    private let loading: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style: .medium)
        view.hidesWhenStopped = true
        return view
    }()

    init(repository: CharacterRepository?) {
        self.repository = repository

        super.init(nibName: nil, bundle: nil)
    }

    @MainActor required init?(coder: NSCoder) {
        repository = nil
        super.init(coder: coder)
    }

    deinit {
        print("-=-=-=-=-=-=-= deinit =-=-=-=-=-=-=-")
        task?.cancel()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateData()
    }

    private func updateData() {
        guard let repository else { return }
        task = Task(priority: .utility) { [weak self] in
            let result: Result<[Character], Error> = await repository.feachData(CharacterEndpoint.characters)
            switch result {
                case .success(let characters): self?.characters = characters
                    // Обновление UI с персонажами
                    print("Данные получены:")
                    print(characters)
                case .failure(let error): self?.showAlert(message: error.localizedDescription)
                // Обработать ошибку
                    print("Ошибка получения данных:")
                    print(error.localizedDescription)
            }
            self?.task = nil
        }
    }
}

extension CharacterViewController {

    override func setupViews() {
        super.setupViews()

        view.addSubview(characterScreen)
    }

    override func constraintViews() {
        super.constraintViews()

        characterScreen.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            characterScreen.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterScreen.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            characterScreen.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            characterScreen.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
