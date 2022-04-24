//
//  ContentView.swift
//  Todo
//
//  Created by Feng Yuan Yap on 2022/04/24.
//

import SwiftUI

struct ContentView: View {
  @State private var showAddTaskPage: Bool = false
  
  var body: some View {
    ZStack(alignment: .bottomTrailing) {
      TaskList()
      AddButton()
        .padding()
        .onTapGesture {
          showAddTaskPage.toggle()
        }
    }
    .sheet(isPresented: $showAddTaskPage, content: {
      AddTaskView()
    })
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
    .background(Color(hue: 0.103, saturation: 0.274, brightness: 0.987))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
