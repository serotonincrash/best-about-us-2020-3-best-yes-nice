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
                    .padding(.all)
                Text("Sean Wong")
                    .font(.custom("Papyrus", size: 64))
                    .foregroundColor(.red)
                    .bold()
                    .strikethrough()
                    .padding()
            }
        }.background(
            RadialGradient(colors: [.white,.blue,.green,.blue,.black,.gray,.mint], center: .center, startRadius: 100, endRadius: 1000)
        ).onAppear(perform: {
            
        })
        
    }
}

struct SeanView_Previews: PreviewProvider {
    static var previews: some View {
        SeanView()
    }
}
