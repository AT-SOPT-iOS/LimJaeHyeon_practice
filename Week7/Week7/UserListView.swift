//
//  UserListView.swift
//  Week7
//
//  Created by 임재현 on 5/24/25.
//

import SwiftUI

struct UserListView: View {
    let users = [
        User(name:"김가현",age: 29),
        User(name:"이세민",age: 25),
        User(name:"김가현",age: 36)
        
    ]
    
    var body: some View {
        List(users,id: \.self) { user in
            HStack {
                Image(systemName: "person.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
                VStack {
                    Text(user.name)
                    Text("나이 \(user.age)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
            .padding(.vertical,4)
        }
    }
}

#Preview {
    UserListView()
}

struct User: Hashable {
    let name: String
    let age: Int
}
