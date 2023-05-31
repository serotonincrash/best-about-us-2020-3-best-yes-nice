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
                 Image("duo")
                     .resizable()
                .scaledToFit()
                .frame(width:200)
                .border (.cyan, width:15)
              
                 
                 
                 
                 
                 
                 
                 
                
                 
                 Text("faith yang")
                     .font(.custom("Baskerville", size: 50))
                     .foregroundStyle(LinearGradient(colors: [.black,.brown,.black,.brown], startPoint: .leading, endPoint: .trailing))
                     .italic()
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
