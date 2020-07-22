//
//  NetworkService.swift
//  RU_Kristina_Gym
//
//  Created by Кристина Перегудова on 22.07.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class NetworkService: ObservableObject {
    
    var baseURL = "http://gym.areas.su/"
    
    init() {
//        signUp(username: "name", email: "email@mail.com", password: "password")
//        signIn(username: "name", password: "password")
//        signout(username: "name")
    }
    
    func signIn(username: String, password: String) {
        
        let parameters: Parameters = ["username": username,
                                      "password": password]
        
        AF.request(baseURL + "signin",
                   method: .post,
                   parameters: parameters,
                   encoding: URLEncoding.default).responseData { (data) in
                    
                    let json = try! JSON(data: data.data!)
                    let notice = json["notice"]
                    let token = notice["token"]
                    let answer = notice["answer"]
        }
        
    }
    
    func signUp(username: String, email: String, password: String) {
        //        let weight = UserDefaults.standard.value(forKey: "weight") as! Int
        //        let height = UserDefaults.standard.value(forKey: "height") as! Int
        
        let weight = "50"
        let height = "160"
        
        let parameters: Parameters = ["username": username,
                                      "email": email,
                                      "password": password,
                                      "weight": weight,
                                      "height": height]
        
        AF.request(baseURL + "signup",
                   method: .post,
                   parameters: parameters,
                   encoding: URLEncoding.default).responseData { (data) in
                    
                    let json = try! JSON(data: data.data!)
                    print(json)
        }
    }
    
    func signout(username: String) {
        let parameters: Parameters = ["username": username]
        
        AF.request(baseURL + "signout",
                   method: .post,
                   parameters: parameters,
                   encoding: URLEncoding.default).responseData { (data) in
                    
                    let json = try! JSON(data: data.data!)
                    let notice = json["notice"]
                    let text = notice["text"]
        }
    }
}
