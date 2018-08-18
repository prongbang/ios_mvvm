//
//  AlamofireBoundResource.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Foundation
import Alamofire

class AlamofireBoundResource<RequestType> {
    
    class func Fetch(requestRouter: URLRequestConvertible, callback: @escaping (Result<RequestType, ApiError>) -> ()) {
        
        Alamofire.request(requestRouter).responseJSON { (response) in
            switch response.result {
            case .success(let value):
                
                callback(Result<RequestType, ApiError>.Success(value as! RequestType))
            case .failure(let error):
                
                var apiError = ApiError()
                
                if let httpStatusCode = response.response?.statusCode {
                    switch (httpStatusCode) {
                    case 401:
                        apiError.error = error as NSError
                        apiError.message = "Unauthorization \(error)"
                        let result = Result<RequestType, ApiError>.Unauthorization(apiError)
                        callback(result)
                        break
                    default:
                        if httpStatusCode >= 400 && httpStatusCode <= 499 {
                            apiError.error = error as NSError
                            apiError.message = "Client error: \(error)"
                            callback(Result<RequestType, ApiError>.Failure(apiError))
                        } else if httpStatusCode >= 500 && httpStatusCode <= 599 {
                            apiError.error = error as NSError
                            apiError.message = "Server error: \(error)"
                            callback(Result<RequestType, ApiError>.Failure(apiError))
                        } else {
                            apiError.error = error as NSError
                            apiError.message = "Other error: \(error)"
                            callback(Result<RequestType, ApiError>.Failure(apiError))
                        }
                        break
                    }
                } else {
                    apiError.error = error as NSError
                    apiError.message = error.localizedDescription
                    callback(Result<RequestType, ApiError>.Failure(apiError))
                }
                
                print(error)
            }
        }
    }
    
}

enum Result<Value, Error> {
    case Loading
    case Success(Value)
    case Warning(Error)
    case Failure(Error)
    case Network(Error)
    case Unauthorization(Error)
}

