//
//  Profile.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct Profile: View {
    
    @ObservedObject var viewModel = NetworkService()
    
    @State var sigIn = false
    
    @State var gender = "male"
    @State var weight = "80"
    @State var height = "175"
    @State var username = "Ivanov Ivan"
    
    @State var toggle = true
    @State var showAlert = true
    
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)), Color(#colorLiteral(red: 0.7710116506, green: 0.8286624551, blue: 0.8925099969, alpha: 1))]), startPoint: .leading, endPoint: .trailing)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 98)
                    
                    HStack {
                        VStack {
                            Text(weight)
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                            
                            Text("Weight")
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                        }.padding()
                        
                        Spacer()
                        
                        VStack {
                            Text(username)
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                            
                            Text(gender)
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        }.padding()
                        
                        Spacer()
                        
                        VStack {
                            Text(height)
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                            
                            Text("Height")
                                .font(.system(size: 14))
                                .foregroundColor(.white)
                        }.padding()
                    }
                    
                }
                
                VStack {
                    HStack {
                        Text("Training rest")
                            .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                            .font(.system(size: 17))
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                        
                        Spacer()
                        
                        Text("30 sec")
                            .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                            .font(.system(size: 17))
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                    }
                    Divider()
                    HStack {
                        Text("Notifications")
                            .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                            .font(.system(size: 17))
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                        
                        Spacer()
                        
                    }
                    Divider()
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("Biometric")
                                .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                                .font(.system(size: 17))
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                            
                            Spacer()
                        }
                        
                    }
                    Divider()
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("Start dialog")
                                .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                                .font(.system(size: 17))
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                            
                            Spacer()
                        }
                    }
                    Divider()
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("Privacy pilicy")
                                .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                                .font(.system(size: 17))
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                            
                            Spacer()
                        }
                    }
                    Divider()
                }
                
                Button(action: {
                    self.viewModel.signout(username: UserDefaults.standard.value(forKey: "username") as? String ?? "", completion: {
                        self.sigIn.toggle()
                    })
                }) {
                    HStack {
                        Spacer()
                        Text("Sign out")
                            .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                            .font(.system(size: 24))
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                        Spacer()
                    }
                    
                }.cornerRadius(15)
                    .border(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)), width: 1)
                    .padding()
                    .navigate(to: SignIn(), when: $sigIn)
                
                Text("Design by Sergey Klimovich")
                    .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                    .font(.system(size: 17))
                Text("Develop by Name Competitor")
                    .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                    .font(.system(size: 17))
                
                Spacer()
            }
            
            if showAlert {
                VStack {
                    Text("Biometric")
                        .font(.system(size: 17))
                        .foregroundColor(.black)
                        .padding()
                    
                    Text("Please, Input Your Biometric Data")
                        .font(.system(size: 13))
                        .foregroundColor(.black)
                    VStack {
                    TextField("Weigth", text: $weight)
                        .font(.system(size: 13))
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(15)
                    
                    TextField("Heigth", text: $height)
                        .font(.system(size: 13))
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(15)
                    }.padding(.vertical, 10)
                    
                    Divider()
                    
                    HStack {
                        Button(action: {
                            self.showAlert.toggle()
                        }) {
                            HStack {
                                Spacer()
                                Text("Cancel")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 17))
                                    .padding(.horizontal)
                                    .padding(.vertical, 10)
                                Spacer()
                            }
                        }
                        
                        Divider()
                        
                        Button(action: {
                            
                        }) {HStack {
                            Spacer()
                            Text("OK")
                                .foregroundColor(.blue)
                                .font(.system(size: 17))
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                            Spacer()
                            }
                        }
                    }
                    
                    
                    
                }.frame(width: 268, height: 216)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.9567824006, green: 0.9569160342, blue: 0.9567400813, alpha: 1)))
                    .cornerRadius(20)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
