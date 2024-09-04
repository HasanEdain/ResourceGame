//
//  Piece.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import Foundation

class Piece: ObservableObject,Equatable, Hashable, Identifiable {

    @Published var direction: TravelDirection
    @Published var color: PlayerColor
    @Published var distance: Int
    var id: UUID

    init(direction: TravelDirection, color: PlayerColor, distance: Int = 1) {
        self.direction = direction
        self.color = color
        self.distance = distance
        self.id = UUID()
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(direction)
        hasher.combine(color)
        hasher.combine(distance)
        hasher.combine(id)
    }

    static func == (lhs: Piece, rhs: Piece) -> Bool {
        if lhs.id != rhs.id {
            return false
        }
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
}
