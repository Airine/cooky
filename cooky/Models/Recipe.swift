//
//  Recipe.swift
//  cooky
//
//  Created by Dr.Fat on 2020/8/1.
//  Copyright © 2020 aaron-xin. All rights reserved.
//
// Abstract:
// The model for an individual Recipe

import SwiftUI

struct Recipe: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var imageName: String
    var requirements: [Condiment]
    var numOfSteps: Int
    var steps: [Step]
    var category: Category
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case chinese = "Chinese"
        case western = "Western"
        case mixology = "Mixology"
    }
}

extension Recipe {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Step: Hashable, Codable {
    fileprivate var videoURL: String
    var description: String
}

struct Condiment: Hashable, Codable {
    var amount: Int
    var unit: String
    var type: String
}
