//
//  AlamofireRouter.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Foundation

public enum AlamofireRouter: AlamofireRouterProtocol {
    
    // Login
    
    case login(email: String, password: String)
    case forgotPassword(username: String, referenceID: String)
    case register(email: String, password: String, userInfo: UserInfo)
    
    // Logout
    
    case logout()
    
    // Profile
    
    case getUserProfile()
    
    // Todo
    case todos()
}
