//
//  AlamofireRouterMethod.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//


import Foundation
import Alamofire

extension AlamofireRouter {
    
    public var method: Alamofire.HTTPMethod {
        switch self {
            
            // Login
            
        case .login:
            return .post
        case .forgotPassword:
            return .post
        case .register:
            return .post
            
            // Logout
            
        case .logout:
            return .post
            
            // Profile
            
        case .getUserProfile:
            return .get
            
            // Todo
        case .todos:
            return .get
        }
    }
}
