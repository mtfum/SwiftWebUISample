//
//  Task.swift
//  SwiftWebUISample
//
//  Created by Fumiya Yamanaka on 2019/12/08.
//  Copyright © 2019 mtfum. All rights reserved.
//

import Foundation

struct Task {
  var name: String
  var createdAt: Date
  var isFinished: Bool

  var createdAtString: String {
    let f = DateFormatter()
    f.timeStyle = .short
    f.dateStyle = .short
    f.locale = Locale(identifier: "ja_JP")
    return f.string(from: createdAt)
  }
}

extension Task: Identifiable {
  var id: String { name + createdAtString }
}
