//
//  CharacterDetail.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//


struct CharacterDetail: Decodable {
    let id: Int
    let name: String
    let image: String
    let created: String
    let episode: [String]
    let gender: String
    let location: CharacterLocation
    let origin: CharacterOrigin
    let species: String
    let status: String
    let type: String
    let url: String
}
