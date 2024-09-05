//
//  TravelDirection.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import Foundation

enum TravelDirection {
    case straight
    case diagonal

    var name: String {
        switch self {
            case .straight:
                return "S"
            case .diagonal:
                return "D"
        }
    }
}
