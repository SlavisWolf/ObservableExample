//
//  PersistenceIterator.swift
//  ObservableExample
//
//  Created by Antonio Jesús on 14/10/23.
//

import Foundation


protocol PersistenceInteractor {
    
    var bundleUrl: URL { get }
    var docUrl: URL { get }
    func loadEmployees() throws -> [EmployeeModel]
    func saveEmployees(_ employees: [EmployeeModel]) throws
}

struct Persistence: PersistenceInteractor {
    
    var bundleUrl: URL = Bundle.main.url(forResource: "Employees", withExtension: "json")!
    var docUrl: URL = URL.documentsDirectory.appending(path: "Employees.json")
}

extension PersistenceInteractor {
    
    func loadEmployees() throws -> [EmployeeModel] {
        var localUrl = docUrl
        if !FileManager.default.fileExists(atPath: localUrl.path() ) { localUrl = bundleUrl }
        let data = try Data(contentsOf: localUrl)
        return try JSONDecoder().decode([EmployeeModel].self, from: data)
    }
    
    func saveEmployees(_ employees: [EmployeeModel]) throws {
        let data = try JSONEncoder().encode(employees)
        try data.write(to: docUrl, options: .atomic)
    }
    
}
