//
//  ScrollView.swift
//  Week6
//
//  Created by 임재현 on 5/17/25.
//

import SwiftUI

struct VerticalScrollView: View {
    var body: some View {
        ScrollView() {
            VStack {
                ForEach(1..<100) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
        
        ScrollView(.horizontal) {
              HStack {
                   ForEach(0..<10) {
                        Text("숫자 \($0)")
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .background(Color.yellow)
                    }
                }
                .frame(maxHeight: .infinity)
            }
    }
    
    
}

//#Preview {
//    ChangeNameView()
//}


struct ChangeNameView: View {
    
    @State var name = "현수"
    
    var body: some View {
        VStack {
            Text(name)
            Button(action: {
                self.name = "나연"
            }) {
                Text("이름 바꾸기")
            }
        }
    }
}


#Preview {
    ChangeNameView()
}
