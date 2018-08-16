//
//  UserInfo.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Foundation

public class UserInfo: NSObject {
    
    public static let instance = UserInfo()
    
    var UID: String?
    var token: String?
    
    var name: String?
    var phone: String?
}
