//
//  LoginView.swift
//  What to eat?
//
//  Created by Yi Z on 4/23/22.
//  Copyright © 2022 Christian Privitelli. All rights reserved.
//

import Foundation
import SwiftUI


struct LoginView: View {

    @State private var showLogin = false
    @State private var user = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
                
                VStack {
                    Text("Log In")
                        .font(.system(size: 60, weight: .bold, design: .default))
                    HStack {
                        Spacer()

                        Image("face").resizable().frame(width: 80, height: 80)
                        Spacer()

                        Image("gmail").resizable().frame(width: 80, height: 80)
                        Spacer()

                    }
                    VStack {
                        TextField("Username", text: $user).padding()
                            .keyboardType(.emailAddress).frame(width: 300, height: 90)
                        SecureField("Passcode", text: $password).padding().frame(width: 300, height: 90)
                    }
                    .frame(width: 340)
                    .background(Color.green.brightness(0.6))
                    .cornerRadius(18)
                    Spacer()
                    Button("Continue as guest") {
                        showLogin = true
                    }.frame(width: 300, height: 40)
                        .foregroundColor(Color.black)
                        .font(.system(size: 25))
                        .background(Color.yellow.brightness(0.8))
                        .cornerRadius(20)
                        

                    Spacer()
                    NavigationLink(destination: ContentView(), isActive: $showLogin) {

                    }
                }
                .autocapitalization(.none)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }.navigationBarBackButtonHidden(true)
        }
    }

    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
            
        }
    }

