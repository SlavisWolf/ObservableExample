//
//  EmployeeCell.swift
//  ObservableExample
//
//  Created by Antonio Jesús on 15/10/23.
//

import SwiftUI

struct EmployeeCell: View {
    
    let employee: EmployeeModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(employee.lastName), \(employee.firstName)")
                .font(.headline)
            Text(employee.email)
                .font(.caption)
                .foregroundStyle(.secondary)
            Text(employee.department.rawValue)
                .font(.footnote)
                .padding(.top, 5)
        }
    }
}

#Preview {
    EmployeeCell(employee: .preview)
}
