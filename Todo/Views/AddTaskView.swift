//
//  AddTaskView.swift
//  Todo
//
//  Created by Feng Yuan Yap on 2022/04/24.
//

import SwiftUI
import RealmSwift

struct AddTaskView: View {
  @ObservedRealmObject var taskGroup: TaskGroup
  @State private var taskContent: String = ""
  @Environment(\.dismiss) var dismiss
  @FocusState private var focus: Bool
  
  var body: some View {
    VStack(alignment: .leading) {
      Title(titleName: "Add new task")
      
      TextField("Enter new task", text: $taskContent)
        .focused($focus, equals: true)
        .textFieldStyle(.roundedBorder)
      
      Button("Add") {
        let newTask = Task(title: taskContent)
        $taskGroup.tasks.append(newTask)
        focus = false
        taskContent = ""
        dismiss()
      }
      .foregroundColor(.white)
      .padding()
      .padding(.horizontal)
      .background(Color(hue: 0.438, saturation: 0.971, brightness: 0.634))
      .cornerRadius(30)
      .disabled(taskContent.isEmpty)
      
      Spacer()
    }
    .padding(.top, 40)
    .padding(.horizontal)
    .background(Color(hue: 0.103, saturation: 0.274, brightness: 0.987))
  }
}

struct AddTaskView_Previews: PreviewProvider {
  static var previews: some View {
    AddTaskView(taskGroup: TaskGroup())
      .previewInterfaceOrientation(.portraitUpsideDown)
  }
}
