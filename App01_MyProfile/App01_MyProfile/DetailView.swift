//
//  DetailView.swift
//  App01_MyProfile
//
//  Created by Danna Valencia on 14/08/23.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var name: String
    @Binding var fecha: Date
    @Binding var peso: Int
    @Binding var altura: Double
    var dateFormat: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MMM/dd"
        return formatter
    }
    
    
    var body: some View {
        VStack{
            Text("Nombre:")
            TextField("Nombre", text: $name)
                .textFieldStyle(.roundedBorder)
            DatePicker(selection: $fecha, in: ...Date(), displayedComponents: .date) {
                Text("\(dateFormat.string(from: fecha))")
            }
            Stepper(value: $peso, in: 30...100) {
                Text("Peso: \(peso)")
            }
            Slider(value: $altura, in: 1.2...2.6)
                .padding([.leading,.trailing],40)
                Text("Altura: \(altura,specifier: "%.2f")")
            
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    DetailView(name: .constant("Harry"), fecha: .constant(Date()), peso: .constant(90), altura: .constant(1.80))
}
