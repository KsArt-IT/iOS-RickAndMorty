//
//  NetworkError.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import Foundation

enum NetworkError: Error {
    case badURL, barRequest, badResponse, invalidData
}
