//
//  Step_4.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct Step_4: View {
    
    @State var nextPage = false
    @State var type: Int?
    
    @State var taped = false
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4350972176, green: 0.6101457477, blue: 0.8216096163, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                
                Spacer()
                
                Text("Step 4/5")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                
                Text("How often do you exercise?")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(.vertical, 50)
                
                VStack {
                    Button(action: {
                        self.type = 0
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
                    .background(self.type == 0 ? Color.yellow : Color.white)
                    .cornerRadius(40)
                    .padding()
                    
                    Button(action: {
                        self.type = 1
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
                    .background(self.type == 1 ? Color.yellow : Color.white)
                    .cornerRadius(40)
                    .padding()
                    
                    Button(action: {
                        self.type = 2
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
                    .background(self.type == 2 ? Color.yellow : Color.white)
                    .cornerRadius(40)
                    .padding()
                }
                .padding(.bottom, 30)
                
                Spacer()
                
                Button(action: {
                    self.taped.toggle()
                    self.nextPage.toggle()
                }) {
                    HStack {
                        Spacer()
                        Text("Next")
                            .font(.system(size: 24))
                            .padding(.vertical, 24)
                        Spacer()
                    }
                }
                .background(self.taped ? Color.yellow : Color.white)
                .cornerRadius(40)
                .padding()
            }
        }.navigate(to: Step_5(), when: $nextPage)
    }
}

struct Step_4_Previews: PreviewProvider {
    static var previews: some View {
        Step_4()
    }
}
