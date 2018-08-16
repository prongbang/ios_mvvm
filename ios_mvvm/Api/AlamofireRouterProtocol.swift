//
//  AlamofireRouterProtocol.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Alamofire

public protocol AlamofireRouterProtocol: URLRequestConvertible {
    
    var baseURLString: String { get }
    var path: String { get }
    var method: Alamofire.HTTPMethod { get }
    var headers: [String: String]? { get }
    var parameters: [String: Any]? { get }
    var rawBody: NSData { get }
}
