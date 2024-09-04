//
//  Piece.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import Foundation

class Piece: Equatable, Hashable {
    static func == (lhs: Piece, rhs: Piece) -> Bool {
        if lhs.direction != rhs.direction {
            return false
        }
        if lhs.color != rhs.color {
            return false
        }
        if lhs.distance != rhs.distance {
            return false
        }

        return true
    }


    func hash(into hasher: inout Hasher) {
        hasher.combine(direction)
        hasher.combine(color)
        hasher.combine(distance)
    }

    @Published var direction: TravelDirection
    @Published var color: PlayerColor
    @Published var distance: Int

    init(direction: TravelDirection, color: PlayerColor, distance: Int = 1) {
        self.direction = direction
        self.color = color
        self.distance = distance
    }
}
