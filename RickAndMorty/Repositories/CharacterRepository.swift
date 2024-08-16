//
//  CharacterRepository.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import Foundation

protocol CharacterRepository {
    func feachData<T: Decodable>(_ endpoint: CharacterEndpoint) async -> Result<T, Error>
    func feachData(_ endpoint: CharacterEndpoint) async -> Result<[Character], Error>
    func feachData(_ endpoint: CharacterEndpoint) async -> Result<[Episode], Error>
}
