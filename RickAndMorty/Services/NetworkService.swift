//
//  NetworkService.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import Foundation

protocol NetworkService {

    func loadData<T: Decodable>(endpoint: CharacterEndpoint) async -> Result<T, Error>

}
