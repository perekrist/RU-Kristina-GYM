//
//  Step_4.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct Step_4: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4350972176, green: 0.6101457477, blue: 0.8216096163, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Step 4/5")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                
                Text("How often do you exercise?")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(.vertical, 50)
                
                VStack {
                    Button(action: {
                        
                    }) {
                        HStack {
                            Spacer()
                            VStack {
                                Text("Newbie")
                                    .font(.system(size: 24))
                                    .padding(.top)
                                Text("Just getting started")
                                    .font(.system(size: 18))
                                    .padding(.bottom)
                            }
                            Spacer()
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(40)
                    .padding()
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Spacer()
                            VStack {
                                Text("Keep on")
                                    .font(.system(size: 24))
                                    .padding(.top)
                                Text("1-2 times a week")
                                    .font(.system(size: 18))
                                    .padding(.bottom)
                            }
                            Spacer()
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(40)
                    .padding()
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Spacer()
                            VStack {
                                Text("Advanced")
                                    .font(.system(size: 24))
                                    .padding(.top)
                                Text("More than 3 times a week")
                                    .font(.system(size: 18))
                                    .padding(.bottom)
                            }
                            Spacer()
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(40)
                    .padding()
                }
                .padding(.bottom, 30)
                
                Button(action: {
                    
                }) {
                    HStack {
                        Spacer()
                        Text("Next")
                            .font(.system(size: 24))
                            .padding(.vertical, 24)
                        Spacer()
                    }
                }
                .background(Color.white)
                .cornerRadius(40)
                .padding()
            }
        }
    }
}

struct Step_4_Previews: PreviewProvider {
    static var previews: some View {
        Step_4()
    }
}
