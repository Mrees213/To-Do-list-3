//
//  AddAssignmentView.swift
//  To Do list 3
//
//  Created by Morgan w Rees on 2/11/21.
//

import SwiftUI

struct AddAssignmentView: View {
    @ObservedObject var assignmentList: AssignmentList
    @State private var showingAddAssignmentItemView = false
    @State private var course = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
       static let courses = ["Math", "History", "Computer Programing"]
//    func AddAssignmentView(assignmentList: AssignmentList())

    var body: some View {
       
        NavigationView {
            Form { TextField("Description", text: $description)
                DatePicker("Due Date", selection: $dueDate, displayedComponents: .date)
                    .sheet(isPresented: AddAssignmentView, content: {
                                   AddAssignmentView(assignmentList = AssignmentList
                                   )
                               })

                    .navigationBarTitle("Add New To-Do Assignment")
                    .navigationBarItems(leading: EditButton(),
                                                  trailing: Button(action: {
                                                     showingAddAssignmentView = true}) {
                                                      Image(systemName: "plus")
                              })
            

                Picker("course", selection: course) {
                    ForEach(Self.Course, id: \.self) { course in
                        Text(course)
                    }
                }
            }
        }


struct AddAssignmentView_Previews:PreviewProvider {
    static var previews: some View {
        AddAssignmentView(assignmentList: )
    }
}
    }
}
