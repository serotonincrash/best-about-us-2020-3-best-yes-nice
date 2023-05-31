//
 //  FaithView.swift
 //  best-about-us-2020-3-best-yes-nice
 //
 //  Created by Tinkertanker on 31/5/23.
 //

 import SwiftUI


 import SwiftUI
 import Font

 struct FaithView: View {
     var body: some View {
         ZStack {
             Color.clear
             VStack {
                 Text("faith yang")
                     .font(.custom("chalkboard", size: 64))
                     .foregroundColor(.white)
             }
         }.background(
             LinearGradient(colors: [.red,.orange,.yellow,.green,.blue,.indigo,.purple], startPoint:.leading, endPoint:.trailing)
         )

     }
 }
             struct FaithView_Previews: PreviewProvider {
                 static var previews: some View {
                     FaithView()
                 }
             }
