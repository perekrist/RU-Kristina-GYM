//
//  Profile.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct Profile: View {
    
    @ObservedObject var viewModel = NetworkService()
    
    @State var sigIn = false
    
    var body: some View {
        Button(action: {
            self.viewModel.signout(username: UserDefaults.standard.value(forKey: "username") as? String ?? "", completion: {
                self.sigIn.toggle()
                self.removeDataFromMemory()
            })
        }) {
            Text("Sign out")
            .foregroundColor(Color(#colorLiteral(red: 0.3905416727, green: 0.6189041138, blue: 0.8423945904, alpha: 1)))
                .font(.system(size: 50))
        }.navigate(to: SignIn(), when: $sigIn)
    }
    
    func removeDataFromMemory() {
//        UserDefaults.standard.removeObject(forKey: "gender")
//        UserDefaults.standard.removeObject(forKey: "weight")
//        UserDefaults.standard.removeObject(forKey: "height")
//        UserDefaults.standard.removeObject(forKey: "isNotFirstTime")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
