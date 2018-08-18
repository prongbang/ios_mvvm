//
//  Todo.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Foundation
import ObjectMapper

struct Todo : Mappable {
    
    var userId: Int? = 0
    var id: Int? = 0
    var title: String? = ""
    var completed: Bool? = false
    
    init?(map: Map) {
    
    }
    
    mutating func mapping(map: Map) {
        userId <- map["userId"]
        id <- map["id"]
        title <- map["title"]
        completed <- map["completed"]
    }
    
}
