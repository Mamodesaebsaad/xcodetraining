//
//  MainView.swift
//  xcodetraining
//
//  Created by saad Mamode saeb on 03/01/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
           
                TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                    DashboardView().tabItem { Label(
                        title: { Text("Dashboard") },
                        icon: { Image (systemName: "rectangle.grid.2x2")}
                    )}
                    
                    ProfileView().tabItem { Label(
                        title: { Text("Profile") },
                        icon: { Image (systemName: "person")}
                    )}
                    
                    MoreView().tabItem { Label(
                        title: { Text("More") },
                        icon: { Image (systemName: "gear")}
                    )}
                }
            
        }.navigationBarHidden(true);
        
    }
}

#Preview {
    MainView()
}
