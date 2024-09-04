//
//  BoardLocation.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import Foundation

class BoardLocation: Identifiable, Hashable, ObservableObject {

    static func == (lhs: BoardLocation, rhs: BoardLocation) -> Bool {
        if lhs.square != rhs.square {
            return false
        }

        if lhs.piece != rhs.piece {
            return false
        }

        return true
    }
    

    func hash(into hasher: inout Hasher) {
        hasher.combine(square)
        hasher.combine(piece)
    }

    @Published var square: BoardSquare
    @Published var piece: Piece?

    init(square: BoardSquare, piece: Piece? = nil) {
        self.square = square
        self.piece = piece
    }
}
