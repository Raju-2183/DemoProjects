//
//  PostData.swift
//  Project
//
//  Created by Nagaraju Yadav on 21/11/23.
//

import Foundation
/*
struct Results : Decodable{
    let hints : [Branch]
}
*/
struct Results: Decodable {
    let status: String
    let branches: [Branch]
}

struct Branch : Decodable, Identifiable {
    let id: Int
    let name: String
    let short: String
}

