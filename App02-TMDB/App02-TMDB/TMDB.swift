//
//  TMDB.swift
//  App02-TMDB
//
//  Created by Danna Valencia on 21/08/23.
//

import Foundation

let apiauth = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1ZDRkMjM5NTEwMWI5ZGUwZGY5NjQxNzMxMWQyMmZhOSIsInN1YiI6IjY0ZTNkNzJjZTg5NGE2MDBjNzI2NTdjOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jIuhIBDIqPmVZtoVcDRl94pN3lhNdGSqmv9xACE1T74"
let headers = [ "Authorization": "Bearer \(apiauth)", "Accept": "application/json", "Content-Type": "application/json" ]
let tmdbURL = "https://api.themoviedb.org/3/"
let imageURL = "https://image.tmdb.org/t/p/original"
let youtubeURL = "https://youtu.be/"


