//
//  To Do list file.swift
//  To Do list 3
//
//  Created by Morgan w Rees on 2/8/21.
//

import Foundation
class AssignmentsList:ObservableObject {

    @Published var items = [AssignmentItem( Course: "History", descripition: "Test", dueDate: Date()),
 AssignmentItem(Course: "Computer Programing", descripition: "Project", dueDate: Date()),
 AssignmentItem(Course: "Math", descripition: "Test", dueDate: Date())]
}
