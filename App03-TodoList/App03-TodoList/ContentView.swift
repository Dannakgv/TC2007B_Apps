//
//  ContentView.swift
//  App03-TodoList
//
//  Created by Danna Valencia on 31/08/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {


    var body: some View {
        TabView{
            TodoListView()
                .tabItem {
                    Image(systemName: "checklist")
                    Text("Todos's")
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: [Item.self, Category.self], inMemory: true)
}
