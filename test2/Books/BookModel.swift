//
//  BookModel.swift
//  test2
//
//  Created by Oleg Makarov on 19.11.2021.
//

import Foundation

struct BooksResponse: Decodable {
    let books: [BookModel]
    
    private enum CodingKeys: String, CodingKey {
        case books = "hydra:member"
    }
}

struct BookModel: Decodable {
    let title:String
    let description:String
    let author:String
}
