//
//  EthanViewView.swift
//  best-about-us-2020-3-best-yes-nice
//
//  Created by EthanViewView Lim on 31/5/23.
//

import SwiftUI
import Subsonic

struct EthanView: View {
    
    @State var presentFireAlarm = false
    @State private var rotation = 0.0
    
    var body: some View {
        Button {
            presentFireAlarm = true
            play(sound: "fire.mp3")
        } label: {
            ZStack {
                Color.black
                VStack {
                    ZStack {
                        Circle()
                            .fill(
                                AngularGradient(
                                    gradient: Gradient(colors: [
                                        .red, .orange, .yellow, .green, .blue, .purple, .red
                                    ]),
                                    center: .center,
                                    startAngle: .zero,
                                    endAngle: .degrees(360)
                                )
                            )
                            .frame(width: 500, height: 500)
                        Image("ar-tim")
                            .resizable()
                            .scaledToFit()
                            .mask(Circle())
                            .padding(.top, 10)
                    }
                    
                    VStack {
                        Text("Omg hi")
                            .font(.largeTitle)
                            .bold()
                            .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.white)
                            .italic()
                            .padding(5)
                        Text("I am Ethan...")
                            .font(.title2)
                            .foregroundColor(Color(red: 239/255, green: 162/255, blue: 67/255, opacity: 1.0))
                        Text("...alive")
                            .foregroundColor((Color(red: 239/255, green: 162/255, blue: 67/255, opacity: 1.0)))
                    }
                    .padding(10)
                    ZStack {
                        VStack {
                            Link(destination: URL(string: "https://www.youtube.com/watch?v=Uq9QTPHYxSo")!, label: {
                                HStack {
                                    Text("My favourite Pokemon")
                                    Image(systemName: "lizard")
                                }
                                .foregroundColor(.white)
                                .padding()
                                .bold()
                                .background(.blue)
                                .cornerRadius(50, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            })
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $presentFireAlarm) {
            ZStack {
                Color.orange
                VStack {
                    Text("OH NO")
                        .bold()
                        .font(.largeTitle)
                        .rotationEffect(Angle(degrees: rotation))
                        .animation(Animation.linear(duration: 1.0).repeatForever(autoreverses: false))
                        .onAppear {
                            rotation = 360.0
                        }
                    Text("You have activated the fire alarm. Evacuate the building to prevent catching fire.")
                    Image(systemName: "flame")
                        .resizable()
                        .scaledToFit()
                        .padding(50)
                }
                .padding()
            }
        }
    }
}

struct EthanView_Previews: PreviewProvider {
    static var previews: some View {
        EthanView()
    }
}
