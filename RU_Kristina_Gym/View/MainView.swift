//
//  MainView.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        Button(action: {
            
        }) {
            Text("Sign out")
            .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                .font(.system(size: 50))
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
