//
//  CharacterRam.swift
//  RickAndMorty
//
//  Created by KsArT on 15.08.2024.
//

import Foundation

struct Character: Decodable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let location: CharacterLocation
    let image: String
    let url: String
    let created: String
}
