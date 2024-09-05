//
//  SquareType.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import Foundation
import SwiftUI


enum SquareType: Identifiable {
    var id: String {
        switch self {
            case .blueStart:
                return "1"
            case .greenStart:
                return "2"
            case .money:
                return "3"
            case .food:
                return "4"
            case .water:
                return "5"
        }
    }

    case greenStart
    case blueStart
    case money
    case food
    case water

    var color: Color {
        switch self {
            case .greenStart:
                return Color.green
            case .blueStart:
                return Color.blue
            case .money:
                return Color.mint
            case .food:
                return Color.pink
            case .water:
                return Color.indigo
        }
    }

    var name: String {
        switch self {
            case .greenStart:
                return "Green Start"
            case .blueStart:
                return "Blue Start"
            case .money:
                return "Money"
            case .food:
                return "Food"
            case .water:
                return "Water"
        }
    }
}
