//
//  ContentView.swift
//  SeSACSwiftUI
//
//  Created by zeze kim on 11/14/23.
//

//generic : 호출할떄 타입을 구체적으로 지정
// some : opaque type(5.1) 역제네릭 타입
//func a<T:UIView>() { // t에 뭐가 들어갈지 모르지만 호출할떄는 지정을 해줌
//}

// 1. modifier
// 2. 뷰가 매번 반환된다
// 3. modifier 순서

// 생성한 당시에는 어떤 타입인지 모르고 , 사용할 때 구체적인 타입을 정의
// some 사용할 때 오히려 이미 알고 있는 타입을 거꾸로 숨김

import SwiftUI

struct ContentView: View {
    let a : Array<String> = Array<String>()
    let b : Array<Int> = [2,3,4]
    var body: some View {  //some View 하나하나 다 타입을 넣는 것이 아니라 그냥 추상화된 상태
        
        //        Button("클릭하기") {
        //            let value = type(of: self.body)
        //            print(value)
        //        }.foregroundStyle(.yellow).font(.largeTitle).background(.green).padding().background(Color.red).border(.gray,width: 10).border(Color.black)
        Text("안녕하세요").foregroundStyle(Color.gray).bold().background(Color.blue).font(.largeTitle)
        VStack {
            Text("안녕하세요").foregroundStyle(.yellow).font(.largeTitle).background(.green).padding().background(Color.red).border(.gray,width: 10).border(Color.black)
        }
    
        Text("안녕하세요").foregroundStyle(.yellow).font(.largeTitle).background(.green).padding().background(Color.red).border(.gray,width: 10).border(Color.black)
    }
}

#Preview {
    ContentView()
}
