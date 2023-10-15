//
//  ContentView.swift
//  ObservableExample
//
//  Created by Antonio Jesús on 12/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(ManagementViewModel.self) var viewModel
    
    var body: some View {
        @Bindable var binding = viewModel
        
        NavigationStack {
            List(viewModel.employeesLogic.employees) { employee in
                NavigationLink(value: employee) {
                    EmployeeCell(employee: employee)
                }
            }
            .navigationTitle("Employees")
            .navigationDestination(for: EmployeeModel.self) { employee in
                EmployeeDetail(employee: employee)
            }
        }
        .alert("Application error", isPresented: $binding.employeesLogic.showAlert) {
            Text(viewModel.employeesLogic.errorMsg)
        }
    }
}

#Preview {
    ContentView()
        .environment(ManagementViewModel.preview)
}


