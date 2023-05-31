//
//  ContentView.swift
//  best-about-us-2020-3-best-yes-nice
//
//  Created by Sean Wong on 31/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SeanView()
                .tabItem {
                    Label("Sean", systemImage: "checkmark")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
