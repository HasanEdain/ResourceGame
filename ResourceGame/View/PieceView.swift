//
//  PieceView.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import SwiftUI

struct PieceView: View {
    @StateObject var piece: Piece

    var body: some View {
        ZStack {
            Circle()
                .fill(piece.color.color)
                .strokeBorder(lineWidth: 2.0)
            HStack {
                Text(piece.direction.name)
                    .fontWeight(.black)
                    .font(.title3)
                Text(String(piece.distance))
                    .fontWeight(.black)
                    .font(.title3)
            }.padding(8)
        }.frame(maxHeight:36.0)
    }
}

#Preview {
    let pieceBlueStraightOne = Piece(direction: .straight, color: .blue)
    let pieceBlueStraightTwo = Piece(direction: .straight, color: .blue, distance: 2)
    let pieceBlueDiagonalOne = Piece(direction: .diagonal, color: .blue)

    let pieceGreenStraightOne = Piece(direction: .straight, color: .green)
    let pieceGreenStraightTwo = Piece(direction: .straight, color: .green, distance: 2)
    let pieceGreenDiagonalOne = Piece(direction: .diagonal, color: .green)


    let vstack: VStack = VStack(){
        PieceView(piece: pieceBlueStraightOne)
        PieceView(piece: pieceBlueStraightTwo)
        PieceView(piece: pieceBlueDiagonalOne)
        PieceView(piece: pieceGreenStraightOne)
        PieceView(piece: pieceGreenStraightTwo)
        PieceView(piece: pieceGreenDiagonalOne)
    }

    return vstack
}
