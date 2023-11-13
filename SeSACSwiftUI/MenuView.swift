//
//  MenuView.swift
//  SeSACSwiftUI
//
//  Created by zeze kim on 11/14/23.
//

import SwiftUI
//      Spacer()
struct MenuView: View {
    var body: some View {
        VStack {
            HStack(spacing:20) {
    //            VStack(spacing:10) {
    //                Image(systemName: "star").background(.red)
    //                Text("00증권").background(.green)
    //            }.padding().background(.yellow) // 기존 이랬던 뷰를 ExtractedView()로 바꿈
    //            ExtractedView()
           
                ExtractedView(img: "star", text: "00뱅크")
                ExtractedView(img: "person", text: "00가게")
                ExtractedView(img: "pencil", text: "00증권")
                VStack(spacing: 10) {
                    Image(systemName: "star").background(.red)
                    Text("text").background(.green)
                }
            }
            List {
                Section{
                    Text("보안과 인증").modifier(PointBorderText())
                
                    Text("보안과 인증").asPointBorderText() //modifier없이도 익스텐션으로 위에것과 동일해짐
                    DatePicker(selection: .constant(Date()), label: {
                        Text("쉬움")
                    })
                    ColorPicker("컬러설정", selection: .constant(.yellow))
                    Text("진행중인 이벤트")
                }
                Section("자산"){
                    Text("보안과 인증")
                    Text("보안과 인증")
                    Text("보안과 인증").modifier(PointBorderText())
                }
            }
        }
        
    }
}

#Preview {
    MenuView()
}

struct ExtractedView: View { // ExtractedView 이름을 바꿔도 되고 별도로 다른 파일에 선언해도 됨
    let img : String
    let text : String
    
    var body: some View {
        VStack(spacing:10) {
            Image(systemName: img).background(.red)
            Text(text).background(.green).underline().strikethrough()
        }.padding().background(.yellow)
    }
}

//custom modifier
struct PointBorderText : ViewModifier {
    func body(content: Content) -> some View {
        content.font(.title).padding(10).foregroundStyle(.white).background(.purple)
            .clipShape(.capsule) // ios 17 이상
    }
    
}

extension View {
    func asPointBorderText() -> some View {
        modifier(PointBorderText())
    }
}
