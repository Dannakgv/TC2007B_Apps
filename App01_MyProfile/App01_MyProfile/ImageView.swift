//
//  ImageView.swift
//  App01_MyProfile
//
//  Created by Danna Valencia on 10/08/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
            Image("Harry")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ImageView()
}
