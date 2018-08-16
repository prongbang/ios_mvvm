//
//  AlamofireRouterHeader.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//
import Foundation
import Alamofire

extension AlamofireRouter {
    
    public var headers: [String: String]? {
        switch self {
        default:
            return nil
        }
    }
    
    public func setHttpHeaders(_ mutableURLRequest: inout URLRequest, headers: [String: String]?) {
        addDefaultHttpHeader(&mutableURLRequest)
        if let headers = headers {
            for each in headers.keys {
                mutableURLRequest.setValue(headers[each], forHTTPHeaderField: each)
            }
        }
    }
    
    private func addDefaultHttpHeader(_ mutableURLRequest: inout URLRequest) {
        
        mutableURLRequest.setValue("application/json;charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        if let token = UserInfo.instance.token {
            mutableURLRequest.setValue(token, forHTTPHeaderField: "x-access-token")
        }
    }
}
