//
//  PostData.swift
//  H4XOR
//
//  Created by Gnanapriya C on 06/04/20.
//  Copyright © 2020 Gnanapriya C. All rights reserved.
//

import Foundation

struct Result: Codable {
    let hits: [Posts]
}

struct Posts: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let url: String?
    let points: Int
    let objectID: String
    let title: String
}
