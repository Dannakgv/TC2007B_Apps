//
//  TabView.swift
//  App04-CustomTabView
//
//  Created by Danna Valencia on 21/09/23.
//

import SwiftUI

struct TabView: View {
    
    @Binding var selectedTab: Tab
    
    var body: some View {
        
        HStack(spacing: 40){
            Button{
                selectedTab = .home
            } label: {
                Image(systemName: TabItem.home.tab == selectedTab ? TabItem.home.selectedImage : TabItem.home.image)
                    .font(.title)
            }
            Button{
                selectedTab = .news
            } label: {
                Image(systemName: TabItem.news.tab == selectedTab ? TabItem.news.selectedImage : TabItem.news.image)
                    .font(.title)
            }
            Button{
                selectedTab = .search
            } label: {
                Image(systemName: TabItem.search.tab == selectedTab ? TabItem.search.selectedImage : TabItem.search.image)
                    .font(.title)
            }
            Button{
                selectedTab = .chat
            } label: {
                Image(systemName: TabItem.chat.tab == selectedTab ? TabItem.chat.selectedImage : TabItem.chat.image)
                    .font(.title)
            }

            
        }
        .tint(Color.white)
        .padding(.vertical, 20)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(){
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(.purple)
                
        }
    }
}
    
#Preview {
    TabView(selectedTab: .constant(.chat))
}
