//
//  BoardSquare.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import SwiftUI

class BoardSquare: ObservableObject, Equatable, Hashable {

    static func == (lhs: BoardSquare, rhs: BoardSquare) -> Bool {
        if lhs.type != rhs.type {
            return false
        }
        if lhs.selected != rhs.selected {
            return false
        }
        
        return true
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(type)
        hasher.combine(selected)
    }

    @Published var type: SquareType
    @Published var selected: Bool

    init(type: SquareType, selected: Bool = false) {
        self.type = type
        self.selected = selected
    }
}
