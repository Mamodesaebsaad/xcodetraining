//
//  xcodetrainingApp.swift
//  xcodetraining
//
//  Created by saad Mamode saeb on 03/01/2025.
//

import SwiftUI

@main
struct xcodetrainingApp: App {

    var isUserLoggedIn: Bool = false;
    
    var body: some Scene {
        WindowGroup {
            if isUserLoggedIn {
                MainView()
            } else {
                LoginView()
            }
        }
    }
}
