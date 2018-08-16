//
//  UserRepository.swift
//  ios_mvvm
//
//  Created by prongbang on 27/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Foundation
import Alamofire

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
                print(data)
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
