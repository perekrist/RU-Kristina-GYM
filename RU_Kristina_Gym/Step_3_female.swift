//
//  Step_3.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct Step_3: View {
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4350972176, green: 0.6101457477, blue: 0.8216096163, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Step 3/5")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                
                Text("What do you want to work on?")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(.vertical, 50)
                
                ZStack {
                    Image("body_f")
                        .offset(x: width / 2 - 20)
                    
                    HStack {
                        VStack {
                            Button(action: {
                                
                            }) {
                                HStack {
                                    Spacer()
                                    Text("Hands")
                                        .font(.system(size: 14))
                                        .padding()
                                    Spacer()
                                }
                            }.frame(width: 172, height: 46)
                                .background(Color.white)
                                .cornerRadius(30)
                                .padding()
                            
                            Button(action: {
                                
                            }) {
                                HStack {
                                    Spacer()
                                    Text("Spine")
                                        .font(.system(size: 14))
                                        .padding()
                                    Spacer()
                                }
                            }.frame(width: 172, height: 46)
                                .background(Color.white)
                                .cornerRadius(30)
                                .padding()
                            
                            Button(action: {
                                
                            }) {
                                HStack {
                                    Spacer()
                                    Text("Torso")
                                        .font(.system(size: 14))
                                        .padding()
                                    Spacer()
                                }
                            }.frame(width: 172, height: 46)
                                .background(Color.white)
                                .cornerRadius(30)
                                .padding()
                            
                            Button(action: {
                                
                            }) {
                                HStack {
                                    Spacer()
                                    Text("Legs")
                                        .font(.system(size: 14))
                                        .padding()
                                    Spacer()
                                }
                            }.frame(width: 172, height: 46)
                                .background(Color.white)
                                .cornerRadius(30)
                                .padding()
                        }
                        Spacer()
                    }.offset(y: -20)
                }
                
            }
        }
    }
}

struct Step_3_female_Previews: PreviewProvider {
    static var previews: some View {
        Step_3()
    }
}
