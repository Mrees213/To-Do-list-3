//
//  ContentView.swift
//  To Do list 3
//
//  Created by Morgan w Rees on 2/8/21.
//

import SwiftUI


    struct ContentView: View {
        @ObservedObject var AssignmentList = AssignmentsList()
        var body: some View {
            .navigationBarTitle("AssignmentList") {
                List {
                    ForEach<AssignmentsList, <#ID: Hashable#>, TupleView<(VStack<TupleView<(Text, Text)>>, Spacer, Text)>>(AssignmentList) { item in
                     VStack(alignment: .leading) {
                                Text(item.priority)
                                    .font(.headline)
                                Text(item.description)
                            }
                            Spacer()
                            Text(item.dueDate, style: .date)
                        }
                    }
                    .onMove(perform: { indices, newOffset in
                        AssignmentList.items.move(fromOffsets: indices, toOffset: newOffset)
                    })
                    .onDelete(perform: { indexSet in
                        AssignmentList.items.remove(atOffsets: indexSet)
                    })
                }
                .navigationBarTitle("AssignmentList")
                .navigationBarItems(leading: EditButton())
            }
        }
        
        
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
        struct AssignmentItem: Identifiable
        {
            var id = UUID()
            var Course = String()
            var descripition = String()
            var dueDate = Date()
            
        }


