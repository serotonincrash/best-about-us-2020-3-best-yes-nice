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
                    .shadow(radius: 3)
                    .scaleEffect(self.isAnimating ? 0.5 :1)
                    .rotationEffect(self.isAnimating ? .degrees(0) : .degrees(360))
                    .animation(.easeInOut(duration: 0.25).repeatForever())
                    .padding(.all)
                Text("Sean Wong")
                    .font(.custom("Papyrus", size: 64))
                    .foregroundStyle(LinearGradient(colors: [.red,.green,.blue], startPoint: .leading, endPoint: .trailing))
                    .shadow(radius: 3)
                    .bold()
                    .strikethrough()
                    .padding()
                
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
        SeanView()
    }
}
