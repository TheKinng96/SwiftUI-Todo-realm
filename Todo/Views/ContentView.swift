//
//  ContentView.swift
//  Todo
//
//  Created by Feng Yuan Yap on 2022/04/24.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
  @ObservedResults(TaskGroup.self) var taskGroups
  @State private var showAddTaskPage: Bool = false
  
  var body: some View {
    if let taskGroup = taskGroups.first {
      ZStack(alignment: .bottomTrailing) {
        TaskList(taskGroup: taskGroup)
        AddButton()
          .padding()
          .onTapGesture {
            showAddTaskPage.toggle()
          }
      }
      .sheet(isPresented: $showAddTaskPage, content: {
        AddTaskView(taskGroup: taskGroup)
      })
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
      .background(Color(hue: 0.103, saturation: 0.274, brightness: 0.987))
    } else {
      ProgressView().onAppear {
        $taskGroups.append(TaskGroup())
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
