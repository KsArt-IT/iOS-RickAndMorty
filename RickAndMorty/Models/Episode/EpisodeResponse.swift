//
//  EpisodeResponse.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//


struct EpisodeResponse: Decodable {
    let error: String?
    let info: Info
    let results: [Episode]
}
