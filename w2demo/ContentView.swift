//
//  ContentView.swift
//  w2demo
//
//  Created by Austine Huang on 2025/9/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle() // 雪人上半
                .frame(width: 150.0)
                .offset(y:-100)
                .foregroundStyle(Color(red: 245/255, green: 245/255, blue: 245/255))
            Circle() // 雪人下半
                .frame(width: 250.0)
                .offset(y:90)
                .foregroundStyle(Color(red: 245/255, green: 245/255, blue: 245/255))
            ZStack { // 扣子
                Circle() // 1
                    .frame(width: 15.0)
                    .offset(y:30)
                Circle() // 2
                    .frame(width: 15.0)
                    .offset(y:65)
                Circle() // 3
                    .frame(width: 15.0)
                    .offset(y:100)
            }
            ZStack{ // 臉
                Circle() // 左眼
                    .frame(width: 15.0)
                    .offset(x: -20, y:-110)
                Circle() // 右眼
                    .frame(width: 15.0)
                    .offset(x: 20, y:-110)
            }
            ZStack { // 圍巾
                RoundedRectangle(cornerRadius: 15) // 圍巾橫
                    .frame(width: 120.0, height: 40.0)
                    .offset(y:-30)
                    .foregroundStyle(Color(red: 245/255, green: 80/255, blue: 70/255))
                RoundedRectangle(cornerRadius: 15) // 圍巾豎
                    .frame(width: 40.0, height: 110.0)
                    .offset(x:25, y:10)
                    .foregroundStyle(Color(red: 245/255, green: 80/255, blue: 70/255))
            }
            ZStack { // 帽子
                
            }
            ZStack { // 手
                Capsule() // 左手
                    .frame(width: 12.0, height: 100.0)
                    .offset(x:-85, y:-95)
                    .foregroundStyle(Color(red: 94/255, green: 64/255, blue: 42/255))
                    .rotationEffect(.degrees(-45))
                Capsule() // 左手掌
                    .frame(width: 12.0, height: 35.0)
                    .foregroundStyle(Color(red: 94/255, green: 64/255, blue: 42/255))
                    .rotationEffect(.degrees(-85))
                    .offset(x:-150, y:-15)
                Capsule() // 右手
                    .frame(width: 12.0, height: 100.0)
                    .offset(x:85, y:-95)
                    .foregroundStyle(Color(red: 94/255, green: 64/255, blue: 42/255))
                    .rotationEffect(.degrees(45))
                Capsule() // 右手掌
                    .frame(width: 12.0, height: 35.0)
                    .foregroundStyle(Color(red: 94/255, green: 64/255, blue: 42/255))
                    .rotationEffect(.degrees(-85))
                    .offset(x:150, y:-15)
            }
        }
        .offset(x:-25, y:40)
    }
}

#Preview {
    ContentView()
}
