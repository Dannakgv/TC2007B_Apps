//
//  MovieModel.swift
//  App02-TMDB
//
//  Created by Danna Valencia on 21/08/23.
//

import Foundation
import SwiftUI
import Alamofire
import SwiftyJSON

//hace que podamos acceder a estos datos en cualquiera de las vistas
@Observable
class MovieModel {
    
    var genres = [Genre]()
    var movies = [Movie]()
    var videos = [Video]()
    
    init(){
        
    }
    
    func fetchGenres() {
        
        genres.removeAll()
        
        let url = "https://api.themoviedb.org/3/genre/movie/list?language=en"
        
        AF.request(url, method: .get, encoding: URLEncoding.default, headers: HTTPHeaders(headers)).responseData { data in
            
            let json = try! JSON(data: data.data!)
            
            for genre in json["genres"] {
                
                let g = Genre(
                    id: genre.1["id"].intValue,
                    name: genre.1["name"].stringValue
                )
    
                print(g.name)
                self.genres.append(g)
                
            }
            
            self.fetchMovies()
            
        }
    }
    
    func fetchMovies(){
        
        movies.removeAll()
        
        let url = "https://api.themoviedb.org/3/movie/now_playing?language=en-US&page=1"
        
        AF.request(url, method: .get, encoding: URLEncoding.default, headers: HTTPHeaders(headers)).responseData { data in
            
            let json = try! JSON(data: data.data!)
            
            for m in json["results"]{
                
                var movieGenres = [String]()
                for g in m.1["genres"]{
                    if let genreName = self.genres.first(where: {$0.id == g.1.intValue}) {
                        movieGenres.append(genreName.name)
                    }
                }
                        
                let movie = Movie(
                    id: m.1["id"].intValue,
                    title: m.1["title"].stringValue,
                    poster_path: m.1["poster_path"].stringValue,
                    overview: m.1["overview"].stringValue,
                    release_date: m.1["release_date"].stringValue,
                    vote_average: m.1["vote_average"].doubleValue,
                    genres: movieGenres
                )
                
                self.movies.append(movie)
            }
            
        }

    }
    
    func fetchVideos(id: Int) {
        
        videos.removeAll()
        let url = "https://api.themoviedb.org/3/movie/\(id)/videos?language=en-US"
        
        AF.request(url, method: .get, encoding: URLEncoding.default, headers: HTTPHeaders(headers)).responseData { data in
            
            let json = try! JSON(data: data.data!)
            
            for v in json["results"] {
                
                
                let video = Video(
                    id: v.1["id"].stringValue,
                    name: v.1["name"].stringValue,
                    key: v.1["key"].stringValue,
                    type: v.1["type"].stringValue
                )
                self.videos.append(video)
            }
            
        }
    }
}
