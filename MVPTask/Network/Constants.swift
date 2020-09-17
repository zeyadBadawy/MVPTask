//
//  Constants.swift
//  MVPTask
//
//  Created by zeyad on 9/17/20.
//  Copyright © 2020 zeyad. All rights reserved.
//

import Foundation
import Alamofire

struct Constants {
        
    static let isTestEnv = false
    
    
    struct ProductionServer {
        static let baseURL = "https://dog.ceo/api/breed"
    }
    struct TestServer {
      static let baseURL = "https://www.google.com"
    }
    
    struct APIParameterKey {

        
    }
    
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}

enum RequestParams {
    case body(_:Parameters)
    case url(_:Parameters)
}
