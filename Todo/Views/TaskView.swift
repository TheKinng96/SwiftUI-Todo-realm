//
//  TaskView.swift
//  Todo
//
//  Created by Feng Yuan Yap on 2022/04/24.
//

import SwiftUI
import RealmSwift

struct TaskView: View {
  var taskContent: String
  var progress: Bool
  
  func checkboxImage() -> String {
    return progress ? "checkmark.circle.fill" : "circle"
  }
  
  var body: some View {
    HStack(spacing: 20) {
      Image(systemName: checkboxImage())
      Text(taskContent)
    }
  }
}

struct TaskView_Previews: PreviewProvider {
  static var previews: some View {
    TaskView(taskContent: "something to do", progress: true)
  }
}
