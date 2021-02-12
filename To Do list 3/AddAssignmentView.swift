//
//  AddAssignmentView.swift
//  To Do list 3
//
//  Created by Morgan w Rees on 2/11/21.
//

import SwiftUI

struct AddAssignmentView: View {
    @ObservedObject var assignmentList: AssignmentList
    @State private var course = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
    static let courses = ["Math", "History", "Computer Programing"]
    //func AddAssignmentView(assignmentList: AssignmentList)
    
    var body: some View {
        NavigationView {
            Form {
                Picker("course", selection: $course) {
                    ForEach(Self.courses, id: \.self) { course in Text(course)
                    }
                }
                
                
                TextField("Description", text: $description)
                DatePicker("Due Date", selection: $dueDate,displayedComponents: .date)
                    
                    .navigationBarTitle("AddNewAssignmentList")
                    .navigationBarItems(trailing: Button("Save") {
                        if course.count > 0 && description.count > 0 {
let item = AssignmentItem(id: UUID(),course: course,description: description, dueDate: dueDate); assignmentList.items.append(item)
                            presentationMode.wrappedValue.dismiss()
                        }
                    }
                
            )}
        }
    }
    
    
    struct AddAssignmentView_Previews:PreviewProvider {
        static var previews: some View {
    AddAssignmentView(assignmentList: AssignmentList)
        }
    }
}


