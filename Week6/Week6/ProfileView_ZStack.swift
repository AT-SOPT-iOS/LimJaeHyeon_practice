//
//  ProfileView_ZStack.swift
//  Week6
//
//  Created by 임재현 on 5/17/25.
//

import SwiftUI

struct ProfileView_ZStack: View {
    var body: some View {
        ZStack(alignment:.bottom) {
            Image("Umbrella")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Real 허거덩스덩스")
                        .font(.headline)
                    Text("이거참허거덩스덩스한상황")
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding()
            .foregroundStyle(.primary)
            .background(Color.primary.colorInvert().opacity(0.75))
        }
    }
}

#Preview {
    ProfileView_ZStack()
}
