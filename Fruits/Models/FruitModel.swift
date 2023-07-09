//
//  FruitModel.swift
//  Fruits
//
//  Created by Joseph on 7/8/23.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
}
