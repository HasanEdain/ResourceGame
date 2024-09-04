//
//  SquareView.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import SwiftUI

struct SquareView: View {
    @StateObject var square: BoardSquare

    var body: some View {
        Rectangle()
            .fill(square.type.color)
            .strokeBorder(borderColor, lineWidth: 3.0)
            .aspectRatio(contentMode: .fit)
    }

    var borderColor: Color {
        if square.selected {
            print("Selected")
            return Color.white
        } else {
            return Color.black
        }
    }
}

#Preview {
    let greenStart: SquareView = SquareView(square: BoardSquare(type: .greenStart))
    let blueStart: SquareView = SquareView(square: BoardSquare(type: .blueStart, selected: true))
    let money: SquareView = SquareView(square: BoardSquare(type: .money))
    let food: SquareView = SquareView(square: BoardSquare(type: .food))
    let water: SquareView = SquareView(square: BoardSquare(type: .water, selected: true))

    let vstack = VStack() {
        greenStart
        blueStart
        money
        food
        water
    }

    return vstack
}
