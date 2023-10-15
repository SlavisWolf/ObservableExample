//
//  PersistencePreview.swift
//  ObservableExample
//
//  Created by Antonio Jesús on 15/10/23.
//

import Foundation

struct PersistencePreview: PersistenceInteractor {
    
    var bundleUrl: URL = Bundle.main.url(forResource: "EmployeesDemo", withExtension: "json")!
    var docUrl: URL = URL.documentsDirectory.appending(path: "EmployeesDemo.json")
}


extension ManagementViewModel {
    
    static let preview = ManagementViewModel(employeesLogic: EmployeesLogic(persistence: PersistencePreview() ) )
}


extension EmployeeModel {
    
    static let preview = EmployeeModel(id: 1,
                                       firstName: "David",
                                       lastName: "Ibáñez",
                                       gender: .male,
                                       email: "shaco@hotmail.com",
                                       department: .engineering,
                                       avatar: URL(string: "https://static-cdn.jtvnw.net/jtv_user_pictures/feb388b1-def6-4e18-a866-61bcd48c2e05-profile_image-300x300.png")!)
}
