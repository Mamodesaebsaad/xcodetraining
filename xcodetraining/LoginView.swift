//
//  LoginView.swift
//  xcodetraining
//
//  Created by saad Mamode saeb on 03/01/2025.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = "";
    @State var password: String = "";
    @State var goToMain: Bool = false;
    
    var body: some View {
       NavigationView {
            VStack {
                NavigationLink(destination: MainView(), isActive: $goToMain, label: { EmptyView()})
                
                HStack {
                    Spacer()
                    Text("Login Form").font(.title).fontWeight(.bold)
                    Spacer()
                }
                Form {
                    Section {
                        TextField("Email", text: $email)
                        SecureField("Password", text: $password)
                    }
                    
                    Section {
                        Button(action: {
                            self.goToMain = true;
                        }) {
                            HStack {
                                Spacer()
                                Text("Login").fontWeight(.bold).foregroundColor(Color.orange)
                                Spacer()
                            }
                        }
                    }
                }
                .foregroundStyle(Color.blue)
                .background(Color.yellow)
                
                NavigationLink(
                    destination: RegisterView(),
                    label: {
                        Text("Register")
                    }
                )
            }
           
        }.navigationBarHidden(true)
    }
}

#Preview {
    LoginView()
}
