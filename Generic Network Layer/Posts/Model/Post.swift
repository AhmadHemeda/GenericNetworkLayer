//
//  Post.swift
//  Generic Network Layer
//
//  Created by Ahmad Hemeda on 19/03/2024.
//

import Foundation

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
