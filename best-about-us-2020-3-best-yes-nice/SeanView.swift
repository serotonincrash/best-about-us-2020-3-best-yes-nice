//
//  SeanView.swift
//  best-about-us-2020-3-best-yes-nice
//
//  Created by Sean Wong on 31/5/23.
//

import SwiftUI
import Font
import Subsonic

struct SeanView: View {
    @State var isAnimating = true
    @Binding var isFun: Bool
    var body: some View {
        ZStack {
            Color.clear
            VStack {
                Image("sean")
                    .resizable()
                    .mask {
                        Circle()
                    }
                    .scaledToFit()
                    .frame(width:200)
                    .offset(x: -200)
                    .shadow(radius: 3)
                    
                    .rotationEffect(self.isAnimating ? .degrees(0) : .degrees(360))
                    .animation(.easeInOut(duration: 1).repeatForever(autoreverses: false), value: isAnimating)
                    .padding(.all)
                Text("Sean Wong")
                    .font(.custom("Papyrus", size: 64))
                    .foregroundStyle(LinearGradient(colors: [.red,.green,.blue], startPoint: .leading, endPoint: .trailing))
                    .shadow(radius: 3)
                    .bold()
                    .strikethrough()
                    .padding()
                    .scaleEffect(self.isAnimating ? 0.5 :1)
                    .animation(.easeInOut(duration: 0.25).repeatForever(), value: isAnimating)
                Button {
                    isFun = true
                } label: {
                    Text("Make things actually fun").font(.custom("Papyrus", size: 64))
                        
                }
                
            }
        }.background(
            RadialGradient(colors: [.white,.blue,.green,.blue,.black,.gray,.mint, .blue, .indigo, .yellow], center: .center, startRadius: 100, endRadius: 500)
        ).onAppear(perform: {
            isAnimating = false
            play(sound: "rickroll.mp3")
        })
        
        
        
    }
}

struct SeanView_Previews: PreviewProvider {
    static var previews: some View {
        SeanView(isFun: .constant(true))
    }
}
