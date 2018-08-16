//
//  MyNetwork.swift
//  ios_mvvm
//
//  Created by prongbang on 28/7/2561 BE.
//  Copyright © 2561 prongbang. All rights reserved.
//

import Foundation

class MyNetwork {
    
    var onSuccess: ((_ result: String)->())?
    
    func loadDataFromApi() {
        _ = "https://itunes.apple.com/us/rss/topfreeapplications/limit=10/json"
        self.onSuccess?("Success")
    }
    
    init() {
        let myNetwork = MyNetwork()
        myNetwork.onSuccess = { result in
            print("Result from server is \(result)")
        }
        
        var onComplete: ((_ result: String)->(String))? // return `String`
        let networkService = NetworkService()
        networkService.onComplete = { result in
            return "Thank you for helping, network object!"
        }
    }
    

}

class NetworkService {
    
    var onComplete: ((_ result: String)->())?
    
    func fetchDataFromUrl(url: String) {
        onComplete?(url)
    }
}
