//
//  LayoutView.swift
//  App01_MyProfile
//
//  Created by Danna Valencia on 07/08/23.
//

import SwiftUI

struct LayoutView: View {
    var body: some View {
        
        VStack(spacing: 0){
            HStack(spacing: 0){
                ZStack{
                    Color.blue
                    Color.red
                        .padding(10)
                }
                Color.pink
            }
            HStack(spacing: 0){
                Color.green
                Color.yellow
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    LayoutView()
}
