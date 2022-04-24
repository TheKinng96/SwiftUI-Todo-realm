//
//  TaskList.swift
//  Todo
//
//  Created by Feng Yuan Yap on 2022/04/24.
//

import SwiftUI

struct TaskList: View {
  var body: some View {
    VStack(alignment: .leading) {
      Text("Tasks")
        .font(.title2)
        .bold()
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
      List {
        TaskView(taskContent: "hihi", progress: false)
      }
      .padding()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color(hue: 0.103, saturation: 0.274, brightness: 0.987))
  }
}

struct TaskList_Previews: PreviewProvider {
  static var previews: some View {
    TaskList()
  }
}
