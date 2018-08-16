//
//  AlamofireRouterParameter.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Foundation

extension AlamofireRouter {
    
    public var parameters: [String: Any]? {
        switch self {
            
            // Login
            
        case .login(let email, let password):
            return [
                "email": email,
                "password": password
            ]
        case .forgotPassword(let username, let referenceID):
            return [
                "username": username,
                "referenceID": referenceID
            ]
        case .register(let email, let password, let userInfo):
            return [
                "email": email,
                "password": password,
                "userInfo": [
                    "name": userInfo.name,
                    "phone": userInfo.phone
                ]
            ]
            
            // Logout
            
        case .logout:
            return nil
            
            // Profile
            
        case .getUserProfile:
            return nil
            
            // Todo
            
        case .todos:
            return nil
        }
    }
}
