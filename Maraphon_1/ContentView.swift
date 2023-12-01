//
//  ContentView.swift
//  Maraphon_1
//
//  Created by Evgeny Evtushenko on 01/12/2023.
//

import SwiftUI

struct ContentView: View {
  let items: [Int] = Array(0..<100)
  let height: CGFloat = 50
  
  var body: some View {
    TabView {
      ScrollView {
        ForEach(items, id: \.self) { item in
          Text("\(item)")
            .frame(maxWidth: .infinity)
            .font(.title)
            .foregroundStyle(.secondary)
        }
      }
      .safeAreaInset(edge: .bottom, spacing: height, content: {
        Spacer().frame(height: 0)
      })
      .overlay(alignment: .bottom) {
        Color.red
          .frame(height: height)
          .opacity(0.8)
      }
      .tabItem {
        Image(systemName: "star")
        Text("Main")
      }
    }
  }
}

#Preview {
    ContentView()
}
