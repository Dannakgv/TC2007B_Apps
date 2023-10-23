//
//  ContentView.swift
//  App04-CustomTabView
//
//  Created by Danna Valencia on 21/09/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var selectedTab: Tab =  .home
    
    var body: some View{
        ZStack{
            VStack{
                switch selectedTab {
                case .home:
                    HomeView()
                case .news:
                    NewsView()
                case .search:
                    SearchView()
                case .chat:
                    ChatView()
                }
            }
            VStack{
                Spacer()
                TabView(selectedTab: $selectedTab)
            }
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
