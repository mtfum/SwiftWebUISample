//
//  TaskRow.swift
//  SwiftWebUISample
//
//  Created by Fumiya Yamanaka on 2019/12/08.
//  Copyright © 2019 mtfum. All rights reserved.
//

import SwiftWebUI

struct TaskRow: View {

  @State var task: Task

  var body: some View {
    HStack {
      Button("Done") {
        self.task.isFinished = true
      }

      VStack(alignment: .leading) {
        Text(task.name)
          .font(.headline)
          .color(task.isFinished ? .secondary : .primary)
        Text(task.createdAtString)
          .color(.secondary)
          .font(.subheadline)
      }
    }
    .padding()
    .disabled(task.isFinished)
  }
}
