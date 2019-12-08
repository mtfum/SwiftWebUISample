//
//  main.swift
//  SwiftWebUISample
//
//  Created by Fumiya Yamanaka on 2019/12/08.
//  Copyright © 2019 mtfum. All rights reserved.
//

import Foundation
import SwiftWebUI

struct MainView: View {

  @State private var tasks: [Task] = [
    Task(name: "Sample Task", createdAt: Date(), isFinished: false)
  ]

  var body: some View {
    Form {
      Section(header: Text("Task App").font(.title)) {
        TaskInputView(action: { text in
          let task = Task(name: text, createdAt: Date(), isFinished: false)
          self.tasks.append(task)
        })
        Spacer(minLength: 12)
        Text("Task List")
          .font(.title)
          .bold()
        List(tasks.identified(by: \.id)) { TaskRow(task: $0) }
      }
    }
  }
}

SwiftWebUI.serve(MainView())
