//
//  ImageView.swift
//  App02-TMDB
//
//  Created by Danna Valencia on 24/08/23.
//

import SwiftUI
import Kingfisher

struct ImageView: View {
    
    var movie: Movie
    
    var body: some View {
        KFImage(URL(string: "\(imageURL)\(movie.poster_path)"))
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
            .overlay(
                VStack{
                    Spacer()
                    HStack{
                        VoteAverageView(vote_average:
                        movie
                            .vote_average)
                        Spacer()
                    }
                }
            )
    }
}

#Preview {
    ImageView(movie: Movie.dummy)
}
