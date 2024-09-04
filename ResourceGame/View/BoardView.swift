//
//  BoardView.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import SwiftUI

struct BoardView: View {
    @StateObject var board: Board

    var body: some View {
        VStack(spacing: 0) {
            ForEach(board.boardLocations, id: \.self) { array in
                HStack(spacing:0){
                    ForEach(array) { boardLocation in
                        ZStack{
                            SquareView(square: boardLocation.square)
                            if let safePiece = boardLocation.piece {
                                PieceView(piece: safePiece)
                            }
                        }
                    }
                }
            }

        }.onTapGesture { location in
            handleTap(location: location)
        }
    }

    func handleTap(location: CGPoint) {
//        print("\(location)")
        let xSquare = Int((location.x/52.0).rounded(.up))
        let ySquare = Int((location.y/52.0).rounded(.up))
//        print("X: \(xSquare), Y:\(ySquare)")
        board.selectSquare(x: xSquare, y: ySquare)
    }
}

#Preview {
    let board = Board.simpleDiagonal()

    return BoardView(board: board)
}
