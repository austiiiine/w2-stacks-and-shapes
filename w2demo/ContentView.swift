//
//  ContentView.swift
//  w2demo
//
//  Created by Austine Huang on 2025/9/12.
//

import SwiftUI

struct RoundedTriangle: Shape { // 自訂圓角三角形
    var cornerRadius: CGFloat = 12.0

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let top = CGPoint(x: rect.midX, y: rect.minY)
        let left = CGPoint(x: rect.minX, y: rect.maxY)
        let right = CGPoint(x: rect.maxX, y: rect.maxY)

        path.move(to: left)
        path.addArc(tangent1End: top, tangent2End: right, radius: cornerRadius)
        path.addArc(tangent1End: right, tangent2End: left, radius: cornerRadius)
        path.addArc(tangent1End: left, tangent2End: top, radius: cornerRadius)
        path.closeSubpath()

        return path
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 98/255, green: 100/255, blue: 139/255) // 深藍色背景
                    .ignoresSafeArea()
            ZStack { // 雪人
                
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
                    RoundedTriangle(cornerRadius: 5) // 鼻子
                        .frame(width:20.0, height: 60)
                        .foregroundStyle(Color(red: 255/255, green: 160/255, blue: 87/255))
                        .rotationEffect(.degrees(-100))
                        .offset(x:-27, y:-88)
                    // 嘴巴（微笑弧線）
                    Path { path in
                        path.addArc(
                            center: CGPoint(x: 0, y: 0),
                            radius: 13,
                            startAngle: .degrees(20),
                            endAngle: .degrees(160),
                            clockwise: false
                        )
                    }
                    .stroke(Color.black, lineWidth: 5)
                    .frame(width: 20, height: 20)
                    .rotationEffect(.degrees(-20))
                    .offset(x:20, y: -78)
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
                    RoundedTriangle(cornerRadius: 10) // 摺角
                        .frame(width:45.0, height: 100.0)
                        .foregroundStyle(Color(red: 245/255, green: 80/255, blue: 70/255))
                        .rotationEffect(.degrees(100))
                        .offset(x:40, y:-60)
                    RoundedTriangle() // 本體
                        .frame(width:110.0, height: 90.0)
                        .foregroundStyle(Color(red: 245/255, green: 80/255, blue: 70/255))
                        .offset(y:-50)
                    RoundedRectangle(cornerRadius: 15) // 白邊
                        .frame(width: 120.0, height: 40.0)
                        .foregroundStyle(.white)
                    Circle() // 毛球
                        .frame(width: 40.0)
                        .foregroundStyle(.white)
                        .offset(x:60, y:-60)
                }
                .rotationEffect(.degrees(25))
                .offset(x:28, y:-165)
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
        
}

#Preview {
    ContentView()
}
