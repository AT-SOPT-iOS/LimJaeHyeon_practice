//
//  Instargram.swift
//  Week6
//
//  Created by 임재현 on 5/17/25.
//

import SwiftUI

struct Instargram: View {
    var body: some View {
        ScrollView(.horizontal) {
            
        }
    }
}


struct ProfileImageView: View {
   var body: some View {
       ZStack {
        //   Image(systemName: "person")
           Circle()
//               .resizable()
//               .clipShape(Circle())
               .frame(width: 60,height: 60)

           
           Circle()
               .foregroundStyle(.green)
               .frame(width: 10,height: 10)
               .padding(.leading, 40)
               .padding(.top, 45)

       }
    }
}

#Preview {
    ProfileImageView()
}

