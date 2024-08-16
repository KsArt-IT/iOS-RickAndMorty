//
//  NetworkServiceImpl.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import Foundation

final class NetworkServiceImpl: NetworkService {

    func loadData<T: Decodable>(endpoint: CharacterEndpoint) async -> Result<T, Error> {
        do {
            guard !Task.isCancelled else { return .failure(CancellationError()) }
            let data = try await executeRequest(endpoint)

            guard !Task.isCancelled else { return .failure(CancellationError()) }
            let result: T = try decode(from: data)

            return .success(result)
        } catch {
            return .failure(error)
        }
    }

    private func executeRequest(_ endpoint: CharacterEndpoint) async throws -> Data {
        guard let url = endpoint.url else { throw NetworkError.badURL }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let (data, _) = try await URLSession.shared.data(for: request)

        return data
    }

    private func decode<T: Decodable>(from data: Data) throws -> T {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(T.self, from: data)
    }

}
