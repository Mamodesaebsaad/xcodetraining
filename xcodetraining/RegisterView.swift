//
//  RegisterView.swift
//  xcodetraining
//
//  Created by saad Mamode saeb on 03/01/2025.
//

import SwiftUI

struct RegisterView: View {
    @State var email: String = "";
    @State var firstName: String = "";
    @State var lastname: String = "";
    @State var password: String = "";
    @State var confirmPassword: String = "";
    
    var body: some View {
        NavigationView {
        VStack {
            HStack {
                Spacer()
                Text("Register Form").font(.title).fontWeight(.bold)
                Spacer()
            }
            Form {
                Section {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastname)
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                    SecureField("Confirm Password", text: $confirmPassword)
                }
                
                Section {
                    Button(action: {
                        print("Trying to login")
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
                destination: LoginView(),
                label: { Text("Go To Login") }
            )
            
        }
    }.navigationBarHidden(true)
    }
}

#Preview {
    RegisterView()
}
