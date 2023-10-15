//
//  ObservableExampleApp.swift
//  ObservableExample
//
//  Created by Antonio Jesús on 12/10/23.
//

import SwiftUI

@main
struct ObservableExampleApp: App {
    
    @State var viewModel = ManagementViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewModel)
        }
    }
}
