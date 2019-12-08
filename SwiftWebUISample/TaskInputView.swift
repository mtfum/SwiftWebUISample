//
//  TaskInputView.swift
//  SwiftWebUISample
//
//  Created by Fumiya Yamanaka on 2019/12/08.
//  Copyright © 2019 mtfum. All rights reserved.
//

import SwiftWebUI

struct TaskInputView: View {

  @State private var text: String = ""

  let action: (String) -> Void

  var body: some View {
    HStack {
      TextField($text)
      Spacer()
      Button("追加", action: {
        self.action(self.text)
        self.text = ""
      })
        .disabled(text.isEmpty)
    }
  }
}
