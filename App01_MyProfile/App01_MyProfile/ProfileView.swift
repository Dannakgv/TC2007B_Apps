//
//  ProfileView.swift
//  App01_MyProfile
//
//  Created by Danna Valencia on 10/08/23.
//


import SwiftUI

struct ProfileView: View {
           
    @State var name: String = "Harry Styles"
    @State var email: String = "harrystyles@outlook.com"
    @State var fecha: Date = Date()
    @State var peso: Int = 90
    @State var altura: Double = 1.80
    @State var showImage = false
    @State var showDetail = false
    
    var dateFormat: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MMM/dd"
        return formatter
    }
    
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
                ZStack{
                    VStack(spacing: 0){
                        VStack{
                            ZStack{
                                Color.blue
                                VStack{
                                    Text(name)
                                        .foregroundStyle(Color.white)
                                        .font(.custom("Handlee-Regular", size: 40))
                                }
                            }
                        }
                        .frame(height:geometry.size.height/3)
                        VStack(){
                            ZStack{
                                Color.berry
                                VStack{
                                    Text(email)
                                        .foregroundStyle(Color.white)
                                        .font(.custom("Handlee-Regular", size: 30))
                                    Text("\(dateFormat.string(from: fecha))")
                                        .foregroundStyle(Color.white)
                                        .font(.custom("Handlee-Regular", size: 30))
                                    HStack{
                                        Text("Peso: \(peso)")
                                            .foregroundStyle(Color.white)
                                            .font(.custom("Handlee-Regular", size: 30))
                                        Text("Altura: \(altura, specifier: "%.2f")")
                                            .foregroundStyle(Color.white)
                                            .font(.custom("Handlee-Regular", size: 30))
                                    }
                                    Button {
                                        showDetail.toggle()
                                    } label: {
                                        Text("Editar")
                                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    }
                                    .buttonStyle(.borderedProminent)
                                    NavigationLink {
                                        ListView()
                                    } label: {
                                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                            .overlay{
                                                HStack{
                                                    Image(systemName: "popcorn")
                                                    Text("Peliculas favoritas")
                                                        .font(.title)
                                                }
                                                .foregroundStyle(Color.white)
                                            }
                                            .frame(width: 300, height: 60)
                                            .padding(.top, 20)
                                    }

                                }
                            }
                        }
                        .frame(height:geometry.size.height*2/3)
                    }
                    VStack{
                        VStack{
                            Button{
                                showImage.toggle()
                            } label:{
                                
                                
                                Image("Harry")
                                    .resizable()
                                    .frame(width: 150, height: 170)
                                    .clipShape(Circle())
                                    .overlay(
                                        Circle()
                                            .stroke(Color.white, lineWidth: 5)
                                    )
                            }
                        }
                        .frame(height:geometry.size.height*2/3)
                        VStack{
                            Spacer()
                        }
                        .frame(height:geometry.size.height/3)
                    }
                    
                }
                .sheet(isPresented: $showImage, content: {
                    ImageView()
                })
                .sheet(isPresented: $showDetail, content: {
                    DetailView(name: $name, fecha: $fecha, peso: $peso, altura: $altura)
                        .presentationDetents([.large, .medium])
                })
            }
        }


    }
}

#Preview {
    ProfileView()
}

