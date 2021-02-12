//
//  To Do list file.swift
//  To Do list 3
//
//  Created by Morgan w Rees on 2/8/21.
//


import Foundation
class AssignmentList:ObservableObject {
    @Published var items = [AssignmentItem(course: "History", description: "Test", dueDate: Date()),AssignmentItem(course: "Computer Programing", description: "Project", dueDate: Date()),AssignmentItem(course: "Math", description: "Test", dueDate: Date())]
}
