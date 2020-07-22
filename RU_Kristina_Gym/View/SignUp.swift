//
//  SignUp.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    
    @ObservedObject var viewModel = NetworkService()
    
    @State var username = ""
    @State var email = ""
    @State var password = ""
    @State var rePassword = ""
    
    @State var signIn = false
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
                    
                    HStack {
                        Image(systemName: "envelope.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 15)
                            .foregroundColor(Color(#colorLiteral(red: 0.6666666667, green: 0.6666666667, blue: 0.662745098, alpha: 1)))
                            .padding(10)
                        
                        Divider()
                            .frame(height: 30)
                        
                        TextField("Email", text: $email)
                        
                    }.padding(10)
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                    
                    HStack {
                        Image("lock")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 15)
                            .foregroundColor(Color(#colorLiteral(red: 0.6666666667, green: 0.6666666667, blue: 0.662745098, alpha: 1)))
                            .padding(10)
                        
                        Divider()
                            .frame(height: 30)
                        
                        TextField("Password", text: $password)
                        
                    }.padding(10)
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal)
                    
                    HStack {
                        Image("lock")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 15)
                            .foregroundColor(Color(#colorLiteral(red: 0.6666666667, green: 0.6666666667, blue: 0.662745098, alpha: 1)))
                            .padding(10)
                        
                        Divider()
                            .frame(height: 30)
                        
                        TextField("Re-Password", text: $rePassword)
                        
                    }.padding(10)
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                }
                
                Spacer()
                
                Button(action: {
                    self.checkData()
                }) {
                    HStack {
                        Spacer()
                        Text("Sign Up")
                            .font(.system(size: 24))
                            .padding(.vertical, 14)
                        Spacer()
                    }
                }
                .background(Color.white)
                .cornerRadius(40)
                .padding([.top, .horizontal])
                
                Spacer()
                
                Button(action: {
                    self.signIn.toggle()
                }) {
                    HStack {
                        Spacer()
                        Text("Back")
                            .underline()
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                        Spacer()
                    }
                }
                .padding(.bottom)
            }
        }.navigate(to: SignIn(), when: $signIn)
            .navigate(to: MainView(), when: $main)
    }
    
    func checkData() {
        if self.username != "" && self.email != "" && self.password != "" && self.rePassword != "" {
            if self.password == self.rePassword {
                if self.email.contains("@") {
                    self.viewModel.signUp(username: self.username, email: self.email, password: self.password, completion: {
                        self.main.toggle()
                    })
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
