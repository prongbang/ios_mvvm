//
//  UserRepository.swift
//  ios_mvvm
//
//  Created by prongbang on 27/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class UserRepository: Repository {
    
    func login(email: String, password: String) {
        let router = AlamofireRouter.login(email: email, password: password)
        Alamofire.request(router).responseJSON { (response) in
            switch response.result {
            case .success(let value):
                print(value)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func todos() { // callback: @escaping (Callback<NSArray>) -> ()
        AlamofireBoundResource<NSArray>.Fetch(requestRouter: AlamofireRouter.todos()) { (result) in
            switch (result) {
            case .Loading:
                
                break
            case .Success(let data):
                
                // Map via ObjectMapper
                let todo:[Todo] = Mapper<Todo>().mapArray(JSONArray: data as! [[String : Any]])
                
                //to get JSON return value
                guard let responseJSON = data as? Array<[String: AnyObject]> else {
                    print("Error reading response")
                    return
                }
                guard let value:[Todo] = Mapper<Todo>().mapArray(JSONArray: responseJSON) else {
                    print("Error mapping response")
                    return
                }
                
                for t in todo {
                    print("userId: \(String(describing: t.userId))")
                    print("id: \(String(describing: t.id))")
                    print("title: \(String(describing: t.title))")
                    print("completed: \(String(describing: t.completed))")
                    print("-----")
                }
                
                break
            case .Warning(let error):
                print(error)
                break
            case .Failure(let error):
                print(error)
                break
            case .Network(let error):
                print(error)
                break
            case .Unauthorization(let error):
                print(error)
                break
            }
        }
    }
    
    func dispose() {
        
    }
    
    
}
