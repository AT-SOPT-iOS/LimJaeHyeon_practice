//
//  CarrotCell.swift
//  Week6
//
//  Created by 임재현 on 5/17/25.
//

import SwiftUI

struct CarrotCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Image("Umbrella")
                    .resizable()
                    .frame(width: 150,height: 150)
                    .cornerRadius(12)
                
                Button {
                    print("hi")
                } label: {
                    Image(systemName: "heart.fill")
                }
                .padding(.leading, 120)
                .padding(.top, 110)

            }
            
            
            
            VStack(alignment: .leading) {
                HStack{
                    Text("아이폰 13")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    
                    Text("군자 1동")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                }
                
                HStack {
                    Text("1,000,000원")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundStyle(.orange)
                }
            }
        }
    }
}

//#Preview {
//    ItemCell()
//}

struct CarrotCell2: View {
    let chats: [ChatModel]
    var body: some View {
        List(chats) { chat in
            ItemCell(model: chat)
        }
    }
}

struct ItemCell: View {
    
    @State var model:ChatModel
    
    var body: some View {
        
        HStack {
         //   Image("\(model.profileImageName)")
            Image("Umbrella")
                .resizable()
                .clipShape(Circle())
                .frame(width: 50,height: 50)
                .padding(.leading,3)
            
            VStack(alignment: .leading){
                HStack {
                    Text("\(model.name)")
                        .font(.system(size: 18,weight: .bold))
                    Text("\(model.location)")
                        .font(.system(size: 16,weight: .semibold))
                }
                
                Text("\(model.message)")
            }
            .padding(.leading,10)
            Spacer()
          // Image("\(model.thumbnailImageName)")
            Image("Umbrella")
                .resizable()
                .frame(width: 30,height: 30)
                .padding()
        }
    }
}
#Preview {
    CarrotCell2(chats: chatDummy)
}
