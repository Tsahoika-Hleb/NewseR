//
//  PostData.swift
//  NewseR-SwiftUI
//
//  Created by Hleb Tsahoika on 29.08.22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String{
        objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
