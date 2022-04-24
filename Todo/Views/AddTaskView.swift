//
//  AddTaskView.swift
//  Todo
//
//  Created by Feng Yuan Yap on 2022/04/24.
//

import SwiftUI

struct AddTaskView: View {
  @State private var taskContent: String = ""
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    VStack {
      Title(titleName: "Add new task")
      
      TextField("Enter new task", text: $taskContent)
        .textFieldStyle(.roundedBorder)
      
      Button("Add") {
        print($taskContent)
        dismiss()
      }
      .foregroundColor(.white)
      .padding()
      .padding(.horizontal)
      .background(Color(hue: 0.438, saturation: 0.971, brightness: 0.634))
      .cornerRadius(30)
      
      Spacer()
    }
    .padding(.top, 40)
    .padding(.horizontal)
    .background(Color(hue: 0.103, saturation: 0.274, brightness: 0.987))
  }
}

struct AddTaskView_Previews: PreviewProvider {
  static var previews: some View {
    AddTaskView()
  }
}
