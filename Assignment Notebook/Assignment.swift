//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Zhou, Alexander on 7/8/19.
//  Copyright © 2019 Alex Zhou. All rights reserved.
//

import UIKit

class Assignment: Codable {
    var title: String
    var course: String
    var dueDate: Int
    var description: String
    init(title: String, course: String, dueDate: Int, description: String) {
        self.title = title
        self.course = course
        self.dueDate = dueDate
        self.description = description
    }
}
