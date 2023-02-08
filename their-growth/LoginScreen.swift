//
//  ContentView.swift
//  their-growth
//
//  Created by Bryan Apodaca on 1/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.orange
                    .ignoresSafeArea()
                Circle()
                    .scale(1.4)
                    .foregroundColor(.white.opacity(0.5))
                    .offset(y:-73)
                Circle()
                    .scale(0.9)
                    .foregroundColor(.white.opacity(0.50))
                    .offset(y:25)
                VStack{
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.pink)
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    Button("Login"){
                        userLogin(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 220, height: 40)
                    .background(Color.pink)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen){
                        EmptyView()
                    }
                }
            }
            .navigationBarHidden(true)
        }
        
    }
    func userLogin(username: String, password: String){
        if username.lowercased() == "bryauk"{
            wrongUsername = 0
            if password.lowercased() == "chloe"{
                wrongPassword = 0
                showingLoginScreen = true
            }else{
                wrongPassword = 2
            }
        }else{
            wrongUsername = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
