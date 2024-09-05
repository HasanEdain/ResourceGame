//
//  BoardSquare.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import SwiftUI

class BoardSquare: ObservableObject, Equatable, Hashable, Identifiable {
    var id: UUID
    @Published var type: SquareType
    @Published var selected: Bool

    init(type: SquareType, selected: Bool = false) {
        self.type = type
        self.selected = selected
        self.id = UUID()
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(type)
        hasher.combine(selected)
        hasher.combine(id)
    }

    static func == (lhs: BoardSquare, rhs: BoardSquare) -> Bool {
        if lhs.id != rhs.id {
            return false
        }
        if lhs.type != rhs.type {
            return false
        }
        if lhs.selected != rhs.selected {
            return false
        }

        return true
    }

}
