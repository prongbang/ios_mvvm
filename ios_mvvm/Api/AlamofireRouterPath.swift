//
//  AlamofireRouterPath.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//


import Foundation

extension AlamofireRouter {
    
    public var path: String {
        switch self {
            
        case .login:
            return "/auth/login/withEmail"
        case .forgotPassword:
            return "/auth/forgotPassword"
        case .register:
            return "/auth/register"
            
            // Logout
            
        case .logout:
            return "/auth/\(String(describing: UserInfo.instance.UID))/logout"
            
            // Profile
            
        case .getUserProfile:
            return "/services/profile/\(String(describing: UserInfo.instance.UID))/getUserProfile"
            
            // Todo
        case .todos:
            return "/todos"
        }
    }
}
