//
//  LoginView.swift
//  Barcode
//
//  Created by Pang on 12/9/2021.
//

import SwiftUI

struct LoginView: View {
    @State var username : String = ""
    @State var password : String = ""
    @State var goToNextPage : Bool = false
    
    var body: some View {
        VStack {
            Login()
            TextField("Username", text: $username)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            NavigationLink(destination: MainPageView()) {
                Button(action: {
                    CheckLogin(username: username, password: password)
                        }, label: {
                            LoginButtonText()
                        })
                    .cornerRadius(15.0)
            }
        }
        .navigate(to: MainPageView(), when: $goToNextPage)
        .padding()
    }
    func CheckLogin(username: String, password: String) {
        print(username)
        print(password)
        goToNextPage = true
    }
}




extension View {
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self
                    .navigationBarTitle("")
                    .navigationBarHidden(true)

                NavigationLink(
                    destination: view
                        .navigationBarTitle("")
                        .navigationBarHidden(true),
                    isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
