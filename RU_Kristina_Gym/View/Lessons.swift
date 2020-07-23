//
//  Lessons.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 23.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct Lessons: View {
    
    @State var selected = 0
    
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)), Color(#colorLiteral(red: 0.7710116506, green: 0.8286624551, blue: 0.8925099969, alpha: 1))]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.top)
                    .frame(height: 65)
                
                Text("Lessons")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .padding()
            }
            
            HStack {
                Button(action: {
                    self.selected = 0
                }) {
                    HStack {
                        Spacer()
                        Text("Hands")
                            .font(.system(size: 18))
                            .foregroundColor(self.selected == 0 ? .white : Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                        
                        Spacer()
                    }
                }.background(self.selected == 0 ? Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)) : .white)
                    .border(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)), width: 1)
                
                Button(action: {
                    self.selected = 1
                }) {
                    HStack {
                        Spacer()
                        Text("Spine")
                            .font(.system(size: 18))
                            .foregroundColor(self.selected == 1 ? .white : Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                        
                        Spacer()
                    }
                }.background(self.selected == 1 ? Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)) : .white)
                    .border(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)), width: 1)
                
                Button(action: {
                    self.selected = 2
                }) {
                    HStack {
                        Spacer()
                        Text("Torso")
                            .font(.system(size: 18))
                            .foregroundColor(self.selected == 2 ? .white : Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                        
                        Spacer()
                    }
                }.background(self.selected == 2 ? Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)) : .white)
                    .border(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)), width: 1)
                
                Button(action: {
                    self.selected = 3
                }) {
                    HStack {
                        Spacer()
                        Text("Legs")
                            .font(.system(size: 18))
                            .foregroundColor(self.selected == 3 ? .white : Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                        
                        Spacer()
                    }
                }.background(self.selected == 3 ? Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)) : .white)
                    .border(Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)), width: 1)
            }.offset(y: -10)
            
            if self.selected == 0 {
                ScrollView {
                    ForEach(0 ..< 5) { _ in
                        Image("hands")
                            .padding()
                    }
                }
            }
            
            if self.selected == 1 {
                ScrollView {
                    ForEach(0 ..< 5) { _ in
                        Image("spine")
                            .padding()
                    }
                }
            }
            
            if self.selected == 2 {
                ScrollView {
                    ForEach(0 ..< 5) { _ in
                        Image("torso")
                            .padding()
                    }
                }
            }
            
            if self.selected == 3 {
                ScrollView {
                    ForEach(0 ..< 5) { _ in
                        Image("legs")
                            .padding()
                    }
                }
            }
        }
    }
}

struct Lessons_Previews: PreviewProvider {
    static var previews: some View {
        Lessons()
    }
}
