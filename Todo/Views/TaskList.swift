//
//  TaskList.swift
//  Todo
//
//  Created by Feng Yuan Yap on 2022/04/24.
//

import SwiftUI
import RealmSwift

struct TaskList: View {
  @ObservedRealmObject var taskGroup: TaskGroup
  var leadingBarButton: AnyView?
  var body: some View {
    VStack(alignment: .leading) {
      Text("Tasks")
        .font(.title2)
        .bold()
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
      List {
        ForEach(taskGroup.tasks) { task in
          TaskView(taskContent: task.title, progress: task.progress)
        }
          .onDelete(perform: $taskGroup.tasks.remove)
          .onMove(perform: $taskGroup.tasks.move)
      }
      .padding()
      .listStyle(GroupedListStyle())
      .navigationBarTitle("Task", displayMode: .large)
      .navigationBarBackButtonHidden(true)
      .navigationBarItems(
        leading: self.leadingBarButton,
        trailing: EditButton())
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color(hue: 0.103, saturation: 0.274, brightness: 0.987))
  }
}

struct TaskList_Previews: PreviewProvider {
  static var previews: some View {
    TaskList(taskGroup: TaskGroup())
  }
}
