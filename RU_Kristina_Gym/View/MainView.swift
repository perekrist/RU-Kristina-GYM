//
//  MainView.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 23.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @State var selected = 0
    @State var sigIn = false
    
    var body: some View {
        ZStack {
            
            if selected == 0 {
                Plan()
            }
            
            if selected == 1 {
                Lessons()
            }
            
            if selected == 3 {
                Profile(sigIn: $sigIn)
            }
            
            VStack {
                Spacer()
                
                TabBar(selected: $selected)
                    .background(Color(#colorLiteral(red: 0.9607035518, green: 0.9608380198, blue: 0.9606611133, alpha: 1)).edgesIgnoringSafeArea(.bottom))
            }
            
            
        }.navigate(to: SignIn(), when: $sigIn)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
