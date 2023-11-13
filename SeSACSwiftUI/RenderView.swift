//
//  RenderView.swift
//  SeSACSwiftUI
//
//  Created by zeze kim on 11/14/23.
//

import SwiftUI

struct RenderView: View {
    @State var age = 10
    var body: some View {
        VStack {
            Text("Hue: \(age)")
            Text("Hue: \(Int.random(in: 1...100))")
            bran
            Text("Hue: \(Int.random(in: 1...100))")
            kokoView()
            Button("클릭 "){
                age = Int.random(in: 1...100)
                // 클릭될떄마다 이 뷰가 리렌더됨
            }
        }
       
        
    }
    var bran : some View{
        Text("bran: \(Int.random(in: 1...100))")
    }
}

#Preview {
    RenderView()
}

struct kokoView: View {
    var body: some View {
        Text("koko: \(Int.random(in: 1...100))")
    }
}
