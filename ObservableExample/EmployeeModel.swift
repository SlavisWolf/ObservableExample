//
//  EmployeeModel.swift
//  ObservableExample
//
//  Created by Antonio Jesús on 14/10/23.
//

import Foundation

 struct EmployeeModel: Codable, Identifiable, Hashable {
    public let id: Int
    public let firstName: String
    public let lastName: String
    public let gender: Gender
    public let email: String
    public let department: Department
    public let avatar: URL
}
