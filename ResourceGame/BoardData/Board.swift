//
//  Board.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import SwiftUI


class Board:ObservableObject {
    @Published var boardLocations: [[BoardLocation]]

    init(boardLocations: [[BoardLocation]]) {
        self.boardLocations = boardLocations
    }

    func selectSquare(x: Int, y:Int) {
        deselectAllSquares()
        boardLocations[y][x].square.selected = true
        print("\(#function) \(x) \(y)")
    }

    func deselectAllSquares() {
        let boardWidth = 7
        let boardHeight = 7

        for i in 0...boardWidth {
            for j in 0...boardHeight {
                boardLocations[j][i].square.selected = false
            }
        }
    }

    static func simpleDiagonal() -> Board {
        var tempLocations = [[BoardLocation]]()

        let boardWidth = 7
        let boardHeight = 7

        for i in 0...boardWidth {
            tempLocations.append( [] )

            for j in 0...boardHeight {
                let squareNumber = (j * boardWidth) + i

                if squareNumber%3 == 0 {
                    tempLocations[i].append(BoardLocation(square: BoardSquare( type: .money )))
                } else if squareNumber%3 == 1 {
                    tempLocations[i].append(BoardLocation(square: BoardSquare( type: .food )))
                } else {
                    tempLocations[i].append(BoardLocation(square: BoardSquare( type: .water )))
                }
            }
        }

        tempLocations[0][0]                     = BoardLocation(square: BoardSquare(type: .greenStart), piece: Piece(direction: .straight, color: .green, distance: 1))
        tempLocations[boardWidth][boardHeight]  = BoardLocation(square: BoardSquare(type: .blueStart), piece: Piece(direction: .straight, color: .blue, distance: 1))

        let board = Board(boardLocations: tempLocations)

        return board
    }
}
