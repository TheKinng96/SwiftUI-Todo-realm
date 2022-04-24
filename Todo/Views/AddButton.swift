//
//  AddButton.swift
//  Todo
//
//  Created by Feng Yuan Yap on 2022/04/24.
//

import SwiftUI

struct AddButton: View {
  var body: some View {
    Image(systemName: "plus")
      .foregroundColor(.white)
      .padding()
      .background(Color(hue: 0.438, saturation: 0.971, brightness: 0.634))
      .cornerRadius(50)
      .frame(height: 50)
  }
}

struct AddButton_Previews: PreviewProvider {
  static var previews: some View {
    AddButton()
  }
}
