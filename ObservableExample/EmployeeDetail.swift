//
//  EmployeeDetail.swift
//  ObservableExample
//
//  Created by Antonio Jesús on 15/10/23.
//

import SwiftUI

struct EmployeeDetail: View {
    
    let employee: EmployeeModel
    
    var body: some View {
        Form(content: {
            LabeledContent("First name", value: employee.firstName)
            LabeledContent("Last name", value: employee.lastName)
            LabeledContent("Email", value: employee.email)
        })
    }
}

#Preview {
    EmployeeDetail(employee: .preview)
}
