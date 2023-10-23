//
//  AddTodoView.swift
//  App03-TodoList
//
//  Created by Danna Valencia on 07/09/23.
//

import SwiftUI
import SwiftData

struct AddTodoView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var categories: [Category]
    
    @Environment(\.dismiss) private var dismiss
    @State var todo: String = ""
    @State var dueDate: Date = Date()
    @State var done: Bool = false
    @State var category:
    
    
    
    var body: some View {
        Text("Hello, World!")
    }
    
    func addTodo(){
        let todo = Todo(todo: todo, done: done, dueDate: dueDate, category: category)
        modelContext.insert(todo)
        dismiss
    }
}




#Preview {
    AddTodoView()
}
