//
//  Movie.swift
//  App01_MyProfile
//
//  Created by Danna Valencia on 17/08/23.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    
    var id: Int
    var name: String
    var genre: String
    var duration: Int
    var poster: String
    
}
