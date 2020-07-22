//
//  ContentView.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = NetworkService()
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4350972176, green: 0.6101457477, blue: 0.8216096163, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Step 1/5")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                
                Text("What is your purpose?")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(.vertical, 50)
                
                VStack {
                    Button(action: {
                        
                    }) {
                        ZStack {
                            HStack {
                                Image("weight")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .padding()
                                Spacer()
                            }
                            HStack {
                                
                                
                                Spacer()
                                Text("Weight loss")
                                    .font(.system(size: 24))
                                    .padding()
                                Spacer()
                            }
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding()
                    
                    Button(action: {
                        
                    }) {
                        ZStack {
                            HStack {
                                Image("yoga")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .padding()
                                Spacer()
                            }
                            HStack {
                                
                                
                                Spacer()
                                Text("Keeping fit")
                                    .font(.system(size: 24))
                                    .padding()
                                Spacer()
                            }
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding()
                    
                    Button(action: {
                        
                    }) {
                        ZStack {
                            HStack {
                                Image("triceps")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .padding()
                                Spacer()
                            }
                            HStack {
                                
                                
                                Spacer()
                                Text("Build muscle")
                                    .font(.system(size: 24))
                                    .padding()
                                Spacer()
                            }
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
