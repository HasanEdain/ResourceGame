//
//  PlayerColor.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import Foundation
import SwiftUI

enum PlayerColor: Equatable, Hashable {
    case green
    case blue

    func hash(into hasher: inout Hasher) {
        hasher.combine(self.name)
    }

    var color: Color {
        switch self {
            case .green:
                return Color.green
            case .blue:
                return Color.blue
        }
    }

    var name: String {
        switch self {
            case .green:
                return "Green"
            case .blue:
                return "Blue"
        }
    }
}
