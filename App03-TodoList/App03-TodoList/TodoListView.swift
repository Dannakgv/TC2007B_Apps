//
//  TodoListView.swift
//  App03-TodoList
//
//  Created by Danna Valencia on 07/09/23.
//

import SwiftUI
import SwiftData

struct TodoListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var todos: [Todo]
    @State  var showAddTodo = false

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(todos) { todo in
                    NavigationLink {
                        TodoDetailView(todo: todo)
                    } label: {
                        HStack{
                            Text(todo.todo)
                            Text(todo.dueDate, format: Date.FormatStyle(date: .numeric, time: .standard))
                        }
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Todo", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select a todo item")
        }
    }

    private func addItem() {
        withAnimation {
         //   let newTodo = Todo(todo: "Todo", done: false, dueDate: Date())
           // modelContext.insert(newTodo)
            print("Add item")
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(todos[index])
            }
        }
    }
}

#Preview {
    TodoListView()
        .modelContainer(for: [Todo.self, Category.self], inMemory: true)
}
