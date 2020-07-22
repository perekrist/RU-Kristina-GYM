//
//  Step_5.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct Step_5: View {
    
    @State var heigth = ""
    @State var weight = ""
    
    @State var nextPage = false
    
    @State var taped = false
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4350972176, green: 0.6101457477, blue: 0.8216096163, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack {
                
                Spacer()
                
                Text("Step 5/5")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                
                Text("What's your heigth and weigth?")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(.vertical, 50)
                
                VStack {
                    TextField("Heigth", text: $heigth)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding()
                    
                    TextField("Weigth", text: $weight)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(30)
                        .padding()
                }
                
                Spacer()
                
                Button(action: {
                    self.taped.toggle()
                    self.nextPage.toggle()
                    UserDefaults.standard.set(self.heigth, forKey: "height")
                    UserDefaults.standard.set(self.weight, forKey: "weight")
                    UserDefaults.standard.set(true, forKey: "isNotFirstTime")
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
        }.navigate(to: SignIn(), when: $nextPage)
    }
}

struct Step_5_Previews: PreviewProvider {
    static var previews: some View {
        Step_5()
    }
}
