//
//  ContentView.swift
//  best-about-us-2020-3-best-yes-nice
//
//  Created by Sean Wong on 31/5/23.
//

import SwiftUI

struct ContentView: View {
    @State var isFun = false
    var body: some View {
        TabView {
            SeanView(isFun: $isFun)
                .tabItem {
                    Label("Sean", systemImage: "checkmark")
                }
            FaithView()
                .tabItem {
                    Label("Faith", systemImage: "checkmark")
                }
            EthanView()
                .tabItem {
                    Label("Ethan", systemImage: "fan.ceiling")
                }
        }
        .rotationEffect(isFun ? .degrees(0) : .degrees(360))
        .animation(.easeInOut(duration: 5).repeatForever(), value: isFun)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
