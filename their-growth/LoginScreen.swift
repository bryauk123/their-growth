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
    //Make a path rather than circles
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.opacity(0.3)
                    .ignoresSafeArea()
                Ellipse()
                    .scale(0.25)
                    .foregroundColor(.pink.opacity(0.5))
                    .offset(y:-250)
                    .offset(x: -75)
                Ellipse()
                    .scale(0.25)
                    .foregroundColor(.blue.opacity(0.50))
                    .offset(y:-205)
                    .offset(x: -28)
                Ellipse()
                    .scale(0.25)
                    .foregroundColor(.yellow.opacity(0.50))
                    .offset(y:-160)
                    .offset(x: -95)
                    .rotationEffect(Angle(degrees: -4), anchor: .bottomLeading)
                Image("string")
                    .offset(x:-54)
                    .offset(y:5)
                    
                
                VStack{
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                        .offset(y:150)
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                        .offset(y:150)
                    Button("Login"){
                        userLogin(username: username, password: password)
                    }
                    .foregroundColor(.black)
                    .frame(width: 220, height: 40)
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                    .offset(y:150)
                    
                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen){
                        EmptyView()
                    }
                    
                    Image("their_growth_title")
                        .offset(y:150)
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
