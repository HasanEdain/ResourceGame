//
//  Location.swift
//  ResourceGame
//
//  Created by Hasan Edain on 9/3/24.
//

import Foundation

class Location: ObservableObject {
    @Published var x: Int
    @Published var y: Int

    init(x: Int = 0, y: Int=0) {
        self.x = x
        self.y = y
    }
}
