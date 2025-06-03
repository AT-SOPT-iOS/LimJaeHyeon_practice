//
//  ContentView.swift
//  Week7
//
//  Created by 임재현 on 5/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct SheetExampleView: View {
    @State private var isSheetPresented = false

    var body: some View {
        VStack(spacing: 20) {
            Text("메인 화면")
                .font(.largeTitle)

            Button("시트 열기") {
                isSheetPresented = true
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            SheetDetailView(isSheetPresented: $isSheetPresented)
               
        }
    }
}

#Preview {
    VerticalSmileys()
}

struct SheetDetailView: View {
    @Binding var isSheetPresented: Bool
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.2)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("시트 뷰")
                    .font(.title)
                Button("닫기") {
                    isSheetPresented = false
                }
                .padding()
                .background(.orange)
                .foregroundStyle(.white)
                .clipShape(Capsule())
            }
        
        }
    }
}

struct VerticalScrollView: View {
    let columns = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0..<20,id: \.self) { value in
                    VStack(spacing: 20) {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(.orange)
                            .frame(width: 150,height: 100)
                            
                        Text("메인 화면")
                            .font(.title)

                        
                    }

                    .padding()
                    .background(.white)
                    .cornerRadius(20)
                    .shadow(radius: 3)

                }
            }

        }
    }
}


struct HorizontalSmileys: View {
    let rows = [GridItem(.fixed(75)),GridItem(.fixed(75))]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows:rows,spacing: 10) {
                ForEach(0..<20,id: \.self) { value in
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(.orange)
                            .frame(width: 75,height: 75)
                            
                        Text("메인 화면\(value + 1)")
                            .font(.title3)
                         

                    }
 
                }
      
            }


        }
    }
}



