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
    @ObservedObject var viewModel = NetworkService()
    
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
                    ForEach(0 ..< self.viewModel.handsLesson.count) { i in
                        Image("hands")
                            .padding()
                            .onTapGesture {
                                self.viewModel.openWebPage(url: self.viewModel.handsLesson[i].url)
                        }
                    }
                }
            }
            
            if self.selected == 1 {
                ScrollView {
                    ForEach(0 ..< self.viewModel.spineLesson.count) { i in
                        Image("spine")
                            .padding()
                            .onTapGesture {
                                self.viewModel.openWebPage(url: self.viewModel.spineLesson[i].url)
                        }
                    }
                }
            }
            
            if self.selected == 2 {
                ScrollView {
                    ForEach(0 ..< self.viewModel.torsoLesson.count) { i in
                        Image("torso")
                            .padding()
                            .onTapGesture {
                                self.viewModel.openWebPage(url: self.viewModel.torsoLesson[i].url)
                        }
                    }
                }
            }
            
            if self.selected == 3 {
                ScrollView {
                    ForEach(0 ..< self.viewModel.legsLesson.count) { i in
                        Image("legs")
                            .padding()
                            .onTapGesture {
                                self.viewModel.openWebPage(url: self.viewModel.legsLesson[i].url)
                        }
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
