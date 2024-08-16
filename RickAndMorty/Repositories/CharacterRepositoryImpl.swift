//
//  CharacterRepositoryImpl.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import Foundation

final class CharacterRepositoryImpl: CharacterRepository {

    private let service: NetworkService

    init(service: NetworkService) {
        self.service = service
    }

    func feachData(_ endpoint: CharacterEndpoint) async -> Result<[Character], Error> {
        let data: Result<CharacterResponse, Error> = await service.loadData(endpoint: endpoint)
        switch data {
            case .success(let characterResponse): return .success(characterResponse.results)
            case .failure(let error): return .failure(error)
        }
    }

    func feachData(_ endpoint: CharacterEndpoint) async -> Result<[Episode], Error> {
        let data: Result<EpisodeResponse, Error> = await service.loadData(endpoint: endpoint)
        switch data {
            case .success(let response): return .success(response.results)
            case .failure(let error): return .failure(error)
        }
    }

    func feachData<T: Decodable>(_ endpoint: CharacterEndpoint) async -> Result<T, Error> {
        await service.loadData(endpoint: endpoint)
    }

}
