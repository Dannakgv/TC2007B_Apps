//
//  ContentView.swift
//  App02-TMDB
//
//  Created by Danna Valencia on 21/08/23.
//  Darle formate, que se le haga click a la pelicula y salgan datos de la pelicula
// Lista de favoritos y trailer
import SwiftUI

struct ContentView: View {
    
    var movieModel = MovieModel()
    
    var body: some View {
        NavigationStack{
            GeometryReader{ geo in
                VStack {
                    ScrollView(.vertical){
                        LazyVStack{ //carga los datos de solo lo que hay en pantall
                            ForEach(movieModel.movies){ movie in
                                NavigationLink{
                                    MovieDetailView(movieModel: movieModel, movie: movie)
                                } label: {
                                    MovieRowView(movie: movie)
                                        .frame(width: geo.size.width * 0.80)
                                        .padding(.horizontal, geo.size.width * 0.10)
                                        .tint(.black)
                                }
                            }
                        }
                    }
                }
                
                .padding()
                .onAppear {
                    movieModel.fetchGenres()
                }
                .navigationTitle("Peliculas")
            }
        }
    }
}

#Preview {
    ContentView()
}
