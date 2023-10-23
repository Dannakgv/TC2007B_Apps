//
//  MovieView.swift
//  App01_MyProfile
//
//  Created by Danna Valencia on 17/08/23.
//

import SwiftUI

struct MovieView: View {
    
    var movie: Movie
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                VStack(spacing: 0){
                    VStack{
                        ZStack{
                            Color.pinky
                            VStack{
                                Text(movie.name)
                                    .foregroundStyle(Color.white)
                                    .font(.custom("Handlee-Regular", size: 70))
                            }
                        }
                    }
                    .frame(height:geometry.size.height/3)
                    VStack(){
                        ZStack{
                            Color.berry
                            VStack{
                                
                                Image(movie.poster)
                                    .resizable()
                                    .frame(width: 200, height: 300)
                                    .clipShape(Rectangle())
                                    .overlay(
                                        Rectangle()
                                            .stroke(Color.white, lineWidth: 5)
                                    )
                                Text("Genre: \(movie.genre)")
                                    .foregroundStyle(Color.white)
                                    .font(.custom("Handlee-Regular", size: 30))
                                Text("Duration: \(movie.duration) minutes" )
                                    .foregroundStyle(Color.white)
                                    .font(.custom("Handlee-Regular", size: 30))
                                
                            }
                            
                        }
                    }
                    .frame(height:geometry.size.height*2/3)
                }
                
            }
            
        }
        
    }
}

#Preview {
    MovieView(movie: Movie(id: 1, name: "Barbie", genre: "Comedy", duration: 90, poster: "Barbie"))
}
