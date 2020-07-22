//
//  Step_2.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct Step_2: View {
    
    @State var nextPage = false
    @State var gender = UserDefaults.standard.value(forKey: "gender") as? String ?? ""
    
    @State var taped = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4350972176, green: 0.6101457477, blue: 0.8216096163, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                
                Spacer()
                
                Text("Step 2/5")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                
                Text("What is your gender?")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(.vertical, 50)
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            UserDefaults.standard.set("female", forKey: "gender")
                            self.gender = UserDefaults.standard.value(forKey: "gender") as! String
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
                        
                    }
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            UserDefaults.standard.set("male", forKey: "gender")
                            self.gender = UserDefaults.standard.value(forKey: "gender") as! String
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
                    }
                    
                    Spacer()
                }
                .padding(.top, 40)
                .padding(.bottom, 80)
                
                Spacer()
                
                Button(action: {
                    self.taped.toggle()
                    self.nextPage.toggle()
                }) {
                    HStack {
                        Spacer()
                        Text("Next")
                            .font(.system(size: 24))
                            .padding()
                        Spacer()
                    }
                }
                .background(self.taped ? Color.yellow : Color.white)
                .cornerRadius(30)
                .padding()
                
            }
        }.navigate(to: Step_3(), when: $nextPage)
    }
}

struct Step_2_Previews: PreviewProvider {
    static var previews: some View {
        Step_2()
    }
}
