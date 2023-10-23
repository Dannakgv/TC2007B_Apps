//
//  Item.swift
//  App03-TodoList
//
//  Created by Danna Valencia on 31/08/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
