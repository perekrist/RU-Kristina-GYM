//
//  SignIn.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct SignIn: View {
    
    @ObservedObject var viewModel = NetworkService()
    
    @State var username = ""
    @State var password = ""
    
    @State var signUp = false
    @State var main = false
        
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4350972176, green: 0.6101457477, blue: 0.8216096163, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                
                Spacer()
                
                Image("logo")
                    .offset(y: 75)
                
                Text("Home\nGym")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                VStack {
                    HStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 15)
                            .foregroundColor(Color(#colorLiteral(red: 0.6666666667, green: 0.6666666667, blue: 0.662745098, alpha: 1)))
                            .padding(10)
                        
                        Divider()
                            .frame(height: 30)
                        
                        TextField("Username", text: $username)
                        
                    }.padding(10)
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal)
                        .padding(.vertical, 15)
                    
                    HStack {
                        Image("lock")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 15)
                            .foregroundColor(Color(#colorLiteral(red: 0.6666666667, green: 0.6666666667, blue: 0.662745098, alpha: 1)))
                            .padding(10)
                        
                        Divider()
                            .frame(height: 30)
                        
                        SecureField("Password", text: $password)
                        
                        
                    }.padding(10)
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal)
                        .padding(.vertical, 15)
                }
                
                Spacer()
                
                Button(action: {
                    self.checkData()
                }) {
                    HStack {
                        Spacer()
                        Text("Sign In")
                            .font(.system(size: 24))
                            .padding(.vertical, 14)
                        Spacer()
                    }
                }
                .background(Color.white)
                .cornerRadius(40)
                .padding([.top, .horizontal])
                
                Button(action: {
                    self.signUp.toggle()
                }) {
                    HStack {
                        Spacer()
                        Text("Sign Up")
                            .underline()
                            .font(.system(size: 24))
                            .padding(.vertical, 24)
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .padding(.bottom)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Spacer()
                        Text("Skip")
                            .underline()
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .padding(.bottom)
            }
        }.navigate(to: SignUp(), when: $signUp)
        .navigate(to: MainView(), when: $main)
    }
    
    func checkData() {
        if self.username != "" && self.password != "" {
            self.viewModel.signIn(username: self.username, password: self.password, completion: {
                self.main.toggle()
            })
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
