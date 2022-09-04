//
//  ContentView.swift
//  SwiftUIDemo2
//
//  Created by YADU MADHAVAN on 04/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isHearted = false
    @State private var heartCount = 0
    var body: some View {
        VStack {
            Image("background_3")
                .resizable()
                .cornerRadius(30)
                .padding()
                .shadow(radius: 10)
            HStack {
                Button {
                    self.heartCount += 1
                } label: {
                    Image(systemName: self.heartCount > 0 ? "heart.fill" : "heart").renderingMode(.original)
                }
                if self.heartCount > 0 {
                    Text("\(self.heartCount)").foregroundColor(.pink)
                }
            }
            Text("Awesome Day")
                .fontWeight(self.heartCount > 0 ? .heavy : .light)
                .foregroundColor(.black)
                .font(self.heartCount > 0 ? .largeTitle : .title)
                .multilineTextAlignment(.center)
                .shadow(color: .gray, radius: 0.1, x: 2, y: 2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
