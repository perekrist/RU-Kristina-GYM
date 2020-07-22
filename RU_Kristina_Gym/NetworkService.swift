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
    
    func signIn(username: String, password: String, completion: @escaping () -> Void) {
        
        let parameters: Parameters = ["username": username,
                                      "password": password]
        
        AF.request(baseURL + "signin",
                   method: .post,
                   parameters: parameters,
                   encoding: URLEncoding.default).responseData { (data) in
                    
                    let json = try! JSON(data: data.data!)
                    let notice = json["notice"]
                    let answer = notice["answer"].stringValue
                    let token = notice["token"].stringValue
                    
                    print(notice)
                    
                    if token != "" {
                        UserDefaults.standard.set(token, forKey: "token")
                        UserDefaults.standard.set(username, forKey: "username")
                        UserDefaults.standard.set(true, forKey: "isLogIned")
                        completion()
                    }
        }
        
    }
    
    func signUp(username: String, email: String, password: String, completion: @escaping () -> Void) {
        let weight = UserDefaults.standard.value(forKey: "weight") as? String ?? "0"
        let height = UserDefaults.standard.value(forKey: "height") as? String ?? "0"
        
        let parameters: Parameters = ["username": username,
                                      "email": email,
                                      "password": password,
                                      "weight": weight,
                                      "height": height]
        
        print(parameters)
        
        AF.request(baseURL + "signup",
                   method: .post,
                   parameters: parameters,
                   encoding: URLEncoding.default).responseData { (data) in
                    
                    if data.data != nil {
                        let json = try! JSON(data: data.data!)
                        print(json)
                        if json != "" {
                            UserDefaults.standard.set(true, forKey: "isLogIned")
                            UserDefaults.standard.set(username, forKey: "username")
                            completion()
                        }
                    }
        }
    }
    
    func signout(username: String, completion: @escaping () -> Void) {
        let parameters: Parameters = ["username": username]
        
        AF.request(baseURL + "signout",
                   method: .post,
                   parameters: parameters,
                   encoding: URLEncoding.default).responseData { (data) in
                    
                    let json = try! JSON(data: data.data!)
                    let notice = json["notice"]
                    let text = notice["text"].stringValue
                    let answer = notice["answer"].stringValue
                    
                    print(notice)
                    
                    if text != "" {
                        UserDefaults.standard.set(false, forKey: "isLogIned")
                        completion()
                    }
        }
    }
}
