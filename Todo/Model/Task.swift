//
//  Task.swift
//  Todo
//
//  Created by Feng Yuan Yap on 2022/04/24.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
  @Persisted(primaryKey: true) var _id: ObjectId
  @Persisted var title: String
  @Persisted var progress: Bool = false
  @Persisted(originProperty: "tasks") var taskGroup: LinkingObjects<TaskGroup>
  
  convenience init(title: String) {
    self.init()
    self.title = title
  }
}

class TaskGroup: Object, ObjectKeyIdentifiable {
  @Persisted(primaryKey: true) var _id: ObjectId
  @Persisted var tasks = RealmSwift.List<Task>()
}
