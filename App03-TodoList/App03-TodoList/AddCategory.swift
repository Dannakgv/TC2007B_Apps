//
//  AddCategory.swift
//  App03-TodoList
//
//  Created by Danna Valencia on 07/09/23.
//

import SwiftUI

struct AddCategory: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(.\dismiss) private var dismiss
    @State var name: String = ""
    @State var color: String = ""
    
    var body: some View {
        VStack{
            Label("Nombre", systemImage: "bookmark.fill")
            TextField("Nombre", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Label("Color", systemImage: "paintpallete.fill")
            TextField("Color", text: $color)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button{
                addCategory()
            } label: {
                Text("Agrega Categoria")
            }
            .buttonStyle(BorderedButtonStyle())
            .tint(.green)
        }
        
        func addCategory(){
            let category = Category(name: name, color: color)
            modelContext.insert(category)
            dismiss()
        }
    }
}

#Preview {
    AddCategory()
}
