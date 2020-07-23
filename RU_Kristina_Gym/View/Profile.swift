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
    
    @State var gender = UserDefaults.standard.value(forKey: "gender") as? String ?? "--"
    @State var weight = UserDefaults.standard.value(forKey: "weight") as? String ?? "--"
    @State var height = UserDefaults.standard.value(forKey: "height") as? String ?? "--"
    @State var username = UserDefaults.standard.value(forKey: "username") as? String ?? "--"
    
    @State var toggle = true
    @State var showAlert = false
    
    @State var showGenderAlert = false
    
    
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
                            self.showAlert.toggle()
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
                            self.showGenderAlert.toggle()
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
                    self.viewModel.signout(username: self.username, completion: {
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
                            UserDefaults.standard.set(self.height, forKey: "height")
                            UserDefaults.standard.set(self.weight, forKey: "weight")
                            self.viewModel.editeprofile {
                                self.weight = UserDefaults.standard.value(forKey: "weight") as? String ?? "--"
                                self.height = UserDefaults.standard.value(forKey: "height") as? String ?? "--"
                                self.showAlert.toggle()
                            }
                        }) {
                            HStack {
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
            
            if showGenderAlert {
                HStack {
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            UserDefaults.standard.set("female", forKey: "gender")
                            self.gender = UserDefaults.standard.value(forKey: "gender") as! String
                            self.showGenderAlert.toggle()
                        }) {
                            Image("female")
                                .resizable()
                                .frame(width: 64, height: 64)
                                .padding()
                        }
                        .background(self.gender == "female" ? Color.yellow : Color.white)
                        .clipShape(Circle())
                        .padding()
                        
                        Text("Female")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                        
                    }.padding()
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            UserDefaults.standard.set("male", forKey: "gender")
                            self.gender = UserDefaults.standard.value(forKey: "gender") as! String
                            self.showGenderAlert.toggle()
                        }) {
                            Image("male")
                                .resizable()
                                .frame(width: 64, height: 64)
                                .padding()
                        }
                        .background(self.gender == "male" ? Color.yellow : Color.white)
                        .clipShape(Circle())
                        .padding()
                        
                        Text("Male")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                    }.padding()
                    
                    Spacer()
                }.frame(width: 280, height: 220)
                    .background(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                    .cornerRadius(20)
                    .padding(.top, 40)
                    .padding(.bottom, 80)
                
                
            }
        }.navigate(to: SignIn(), when: $sigIn)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
