//
//  Callback.swift
//  ios_mvvm
//
//  Created by prongbang on 16/8/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Foundation


enum Callback<Value> {
    case onLoading()
    case onSuccess(Value, state: State)
    case onFailure(state: State, e: ApiError)
    case onWarning(state: State, e: ApiError)
    case onNetwork(state: State, e: ApiError)
    case onUnauthorization(state: State, e: ApiError)
}
