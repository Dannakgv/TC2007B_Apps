//
//  ListView.swift
//  App01_MyProfile
//
//  Created by Danna Valencia on 17/08/23.
//


 import SwiftUI
 
 struct ListView: View {
 
 @State private var searchText = ""
 
 var movies: [Movie] = [
 Movie(id: 1, name: "Peter Pan", genre: "Adventures", duration: 90, poster: "Peter"),
 Movie(id: 2, name: "Oppenheimer", genre: "Drama", duration: 185, poster: "Oppenheimer"),
 Movie(id: 3, name: "Barbie", genre: "Comedy", duration: 90, poster: "Barbie")
 ]
 
 var body: some View {
 NavigationView {
 VStack {
 List {
 ForEach(movies.filter { searchText.isEmpty ? true : $0.name.localizedCaseInsensitiveContains(searchText) }) { movie in
 NavigationLink(destination: MovieView(movie: movie)) {
 Text(movie.name)
 }
 }
 }
 .listStyle(.plain)
 }
 .searchable(text: $searchText)
 }
 }
 
 
 }
 
 #Preview {
 ListView()
 }
