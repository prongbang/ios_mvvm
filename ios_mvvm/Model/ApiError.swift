//
//  ApiError.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Foundation

struct ApiError {
    var error: NSError?
    var message: String?
    
    var description: String {
        if let error = error {
            return error.description
        }
        else if let message = message {
            return message
        }
        return "ApiError"
    }
}
