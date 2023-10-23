//
//  TrailerListView.swift
//  App02-TMDB
//
//  Created by Danna Valencia on 07/09/23.
//

import SwiftUI

struct TrailerListView: View {
    
    var movieModel: MovieModel
    var movie: Movie
    
    var body: some View {
        VStack {
            List {
                ForEach(movieModel.videos) { video in
                    NavigationLink {
                        TrailerView(trailerId: video.key, trailerName: video.name)
                    } label: {
                        Text(video.name)
                    }
                }
            }
            .onAppear {
                movieModel.fetchVideos(id: movie.id)
            }
        }
    }
}

#Preview {
    TrailerListView(movieModel: MovieModel(), movie: Movie.dummy)
}
