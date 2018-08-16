//
//  AlamofireRouterURLRequest.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//


import Foundation
import Alamofire

extension AlamofireRouter {
    
    public func asURLRequest() throws -> URLRequest {
        let url = URL(string: baseURLString + path)!
        var mutableURLRequest = URLRequest(url: url)
        mutableURLRequest.httpMethod = method.rawValue
        mutableURLRequest.httpBody = rawBody as Data
        setHttpHeaders(&mutableURLRequest, headers: headers)
        
        return try Alamofire.JSONEncoding.default.encode(mutableURLRequest, with: parameters)
    }
}
