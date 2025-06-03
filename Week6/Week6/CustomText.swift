//
//  CustomText.swift
//  Week6
//
//  Created by 임재현 on 5/17/25.
//

import SwiftUI

struct CustomText: View {
    var body: some View {
        Text("iOS 짱!")
            .font(.system(size: 100))
            .fontWeight(.bold)
            .foregroundStyle(.red)
    }
}

#Preview {
    CustomText()
}
