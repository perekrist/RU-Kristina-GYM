//
//  Plan.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 23.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct Plan: View {
    var body: some View {
        ZStack {
            VStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)), Color(#colorLiteral(red: 0.7710116506, green: 0.8286624551, blue: 0.8925099969, alpha: 1))]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.top)
                    .frame(height: 212)
                
                Spacer()
            }
            
            VStack {
                
                Text("Home Gym")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .padding()
                    .padding(.top, 20)
                
                ScrollView {
                    
                    HStack {
                        VStack {
                            Text("0")
                                .font(.system(size: 15))
                                .foregroundColor(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                            Text("Training")
                                .font(.system(size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                        }.padding()
                        
                        Spacer()
                        
                        VStack {
                            Text("0")
                                .font(.system(size: 15))
                                .foregroundColor(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                            Text("Kcal")
                                .font(.system(size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                        }.padding()
                        
                        Spacer()
                        
                        VStack {
                            Text("0")
                                .font(.system(size: 15))
                                .foregroundColor(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                            Text("Minutes")
                                .font(.system(size: 16))
                                .foregroundColor(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                        }.padding()
                    }.padding(.top, 45)
                    
                    VStack {
                        ZStack {
                            Image("hands")
                                .padding()
                            
                            VStack {
                                Spacer()
                                
                                HStack {
                                    Text("Hands")
                                        .font(.system(size: 18))
                                        .foregroundColor(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                                        .padding()
                                    Spacer()
                                }
                            }.padding()
                        }
                        
                        ZStack {
                            Image("spine")
                                .padding()
                            
                            VStack {
                                Spacer()
                                
                                HStack {
                                    Text("Spine")
                                        .font(.system(size: 18))
                                        .foregroundColor(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                                        .padding()
                                    Spacer()
                                }
                            }.padding()
                        }
                        
                        ZStack {
                            Image("torso")
                                .padding()
                            
                            VStack {
                                Spacer()
                                
                                HStack {
                                    Text("Torso")
                                        .font(.system(size: 18))
                                        .foregroundColor(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                                        .padding()
                                    Spacer()
                                }
                            }.padding()
                        }
                        
                        ZStack {
                            Image("legs")
                                .padding()
                            
                            VStack {
                                Spacer()
                                
                                HStack {
                                    Text("Legs")
                                        .font(.system(size: 18))
                                        .foregroundColor(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                                        .padding()
                                    Spacer()
                                }
                            }.padding()
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 800)
                .background(Color.white)
                .cornerRadius(60)
            }
        }
    }
}

struct Plan_Previews: PreviewProvider {
    static var previews: some View {
        Plan()
    }
}
