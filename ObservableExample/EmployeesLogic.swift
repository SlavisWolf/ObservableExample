//
//  EmployeesLogic.swift
//  ObservableExample
//
//  Created by Antonio Jesús on 15/10/23.
//

import SwiftUI

@Observable
final class EmployeesLogic {
    
    static let shared = EmployeesLogic()
    
    var employees: [EmployeeModel]
    let persistence: PersistenceInteractor
    
    var errorMsg = ""
    var showAlert = false
    
    init(persistence: PersistenceInteractor = Persistence() ) {
        self.persistence = persistence
        
        do {
            employees = try persistence.loadEmployees()
            errorMsg = ""
            showAlert = false
        } catch {
            employees = []
            errorMsg = error.localizedDescription
            showAlert = true
        }
    }
    
}
