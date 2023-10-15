//
//  ManagementViewModel.swift
//  ObservableExample
//
//  Created by Antonio Jesús on 15/10/23.
//

import Foundation

@Observable
final class ManagementViewModel {
    
    var employeesLogic: EmployeesLogic
        
    init(employeesLogic: EmployeesLogic = .shared) {
        self.employeesLogic = employeesLogic
    }
}
