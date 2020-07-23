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
    var lessons: [Lesson] = []
    
    var handsLesson: [Lesson] = []
    var spineLesson: [Lesson] = []
    var torsoLesson: [Lesson] = []
    var legsLesson: [Lesson] = []
    init() {
        getLessons()
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
    
    func profile(completion: @escaping () -> Void) {
        
        let token = UserDefaults.standard.value(forKey: "token") as? String ?? "token"
        
        let parameters: Parameters = ["token": token]
        
        AF.request(baseURL + "profile",
                   method: .post,
                   parameters: parameters,
                   encoding: URLEncoding.default).responseData { (data) in
                    
                    if data.data != nil {
                        let json = try! JSON(data: data.data!)
                        print(json)
                        for i in json {
                            UserDefaults.standard.set(i.1["username"].stringValue, forKey: "username")
                            UserDefaults.standard.set(i.1["height"].stringValue, forKey: "height")
                            UserDefaults.standard.set(i.1["weight"].stringValue, forKey: "weight")
                        }
                        if json != "" {
                            completion()
                        }
                    }
        }
        
    }
    
    func getLessons() {
        
        AF.request(baseURL + "lessons",
                   method: .get,
                   encoding: URLEncoding.default).responseData { (data) in
                    
                    if data.data != nil {
                        let json = try! JSON(data: data.data!)
                        print(json)
                        for i in json {
                            self.lessons.append(Lesson(category: i.1["category"].stringValue, url: i.1["url"].stringValue, id: i.1["id"].intValue))
                        }
                        self.handsLesson = self.lessons.filter { (i) -> Bool in
                            i.category == "hands"
                        }
                        
                        self.spineLesson = self.lessons.filter { (i) -> Bool in
                            i.category == "spine"
                        }
                        
                        self.torsoLesson = self.lessons.filter { (i) -> Bool in
                            i.category == "torso"
                        }
                        
                        self.legsLesson = self.lessons.filter { (i) -> Bool in
                            i.category == "legs"
                        }
                        
                        print(self.lessons.count)
                        print(self.handsLesson.count)
                        print(self.spineLesson.count)
                        print(self.torsoLesson.count)
                        print(self.legsLesson.count)
                    }
        }
    }
    
    func editeprofile(completion: @escaping () -> Void) {
        
        let weight = UserDefaults.standard.value(forKey: "weight") as? String ?? "0"
        let height = UserDefaults.standard.value(forKey: "height") as? String ?? "0"
        let token = UserDefaults.standard.value(forKey: "token") as? String ?? "0"
        
        let parameters: Parameters = ["token": token,
                                      "weight": weight,
                                      "height": height]
        
        AF.request(baseURL + "editeprofile",
                   method: .put,
                   encoding: URLEncoding.default).responseData { (data) in
                    
                    if data.data != nil {
                        let json = try! JSON(data: data.data!)
                        
                        let notice = json["notice"]
                        let text = notice["text"].stringValue
                        let answer = notice["answer"].stringValue
                        
                        print(notice)
                        
                        if text != "" {
                            completion()
                        }
                    }
        }
    }
    
    
}
