//
//  TabBar.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 23.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    
    @Binding var selected : Int
    
    var body: some View {
        
        HStack {
            Button(action: {
                self.selected = 0
            }) {
                VStack {
                    Image("list")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(self.selected == 0 ? Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)) : Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                    Text("Plan")
                        .font(.system(size: 10))
                        .foregroundColor(self.selected == 0 ? .blue : Color(#colorLiteral(red: 0.599947989, green: 0.6000345349, blue: 0.5999206305, alpha: 1)))
                }
            }
            
            Spacer()
            
            Button(action: {
                self.selected = 1
            }) {
                VStack {
                    Image("dancing")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(self.selected == 1 ? Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)) : Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                    Text("Lessons")
                        .font(.system(size: 10))
                        .foregroundColor(self.selected == 1 ? .blue : Color(#colorLiteral(red: 0.599947989, green: 0.6000345349, blue: 0.5999206305, alpha: 1)))
                }
            }
            
            Spacer()
            
            Button(action: {
                self.selected = 2
            }) {
                VStack {
                    Image("report")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(self.selected == 2 ? Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)) : Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                    Text("Reports")
                        .font(.system(size: 10))
                        .foregroundColor(self.selected == 2 ? .blue : Color(#colorLiteral(red: 0.599947989, green: 0.6000345349, blue: 0.5999206305, alpha: 1)))
                }
            }
            
            Spacer()
            
            Button(action: {
                self.selected = 3
            }) {
                VStack {
                    Image("user")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(self.selected == 3 ? Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)) : Color(#colorLiteral(red: 0.3866932392, green: 0.6149073243, blue: 0.8426337838, alpha: 1)))
                    Text("Profile")
                        .font(.system(size: 10))
                        .foregroundColor(self.selected == 3 ? .blue : Color(#colorLiteral(red: 0.599947989, green: 0.6000345349, blue: 0.5999206305, alpha: 1)))
                }
            }
        }.padding()
        .padding(.horizontal, 22)
            .padding(.bottom, 40)
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(selected: .constant(0))
    }
}
