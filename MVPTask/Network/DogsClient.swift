//
//  DogsClient.swift
//  MVPTask
//
//  Created by zeyad on 9/17/20.
//  Copyright © 2020 zeyad. All rights reserved.
//

import Foundation
import Alamofire

class DogsClient {
    
    //MARK: Production APIs
    
    static func getRandomDog(breadName:String ,completion: @escaping (AFResult<Dog>)->Void) {
        AF.request(Router.getDog(breadName: breadName)).responseDecodable { (response: AFDataResponse<Dog>) in
            completion(response.result)
        }
    }
    
}
