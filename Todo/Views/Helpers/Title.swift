//
//  Title.swift
//  Todo
//
//  Created by Feng Yuan Yap on 2022/04/24.
//

import SwiftUI

struct Title: View {
  var titleName: String
    var body: some View {
      Text(titleName)
        .font(.title2)
        .bold()
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(titleName: "Tasks")
    }
}
