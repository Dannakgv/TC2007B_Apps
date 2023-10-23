//
//  Video.swift
//  App02-TMDB
//
//  Created by Danna Valencia on 24/08/23.
//

import SwiftUI

struct Video: Identifiable{
    
    var id: String
    var name: String
    var key: String
    var type: String
    
}

extension Video {
    
    static var dumy = Video(id: "1234", name: "We Love You Lutz", key: "PeWnAFeqMUA", type: "Clip")
}
