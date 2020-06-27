//
//  ContentView.swift
//  developApps_with_Stanford
//
//  Created by 冷鸣轩 on 2020/6/27.
//  Copyright © 2020 冷鸣轩. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack/*从左向右安排*//*(spacing: 0)：两个试图的间距*/{
            ForEach/*迭代(用于制作多个相同视图)*/(0..<4){ index in
                CardView(isFaceUp: true)//调用CardView
            }
        }
            .foregroundColor(Color.orange)/*前景色为：橙色*/
            .padding()//填充
            .font(Font.largeTitle)//大字体
    }
}

struct CardView: View {
    
    var isFaceUp: Bool/*定义排面正反的flag*/
    
    var body: some View{
        ZStack/*类似链接*/{
            if isFaceUp{
            RoundedRectangle(cornerRadius: 10.0 /*圆角矩形弧度*/).stroke(lineWidth: 3)/*只保留边缘,边缘粗细：3*/
            RoundedRectangle(cornerRadius: 10.0 ).fill(Color.white)//填充为:白色
            Text("👻")
            }else{
                RoundedRectangle(cornerRadius: 10.0 ).fill()
            }
        }
    }
}



























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
