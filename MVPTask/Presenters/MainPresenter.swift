//
//  MainPresenter.swift
//  MVPTask
//
//  Created by zeyad on 9/17/20.
//  Copyright © 2020 zeyad. All rights reserved.
//

import Foundation


protocol MainDelegate{
    
    func showProgressView()
    func hideProgressView()
    func requestSucceed(StringURl:String)
    func requestDidFailed(message: String)
}


class MainPresenter {
    
    var delegate: MainDelegate
    
    init(delegate: MainDelegate) {
        self.delegate = delegate
    }
    
    func getDog(breadName:String?){
        guard let breadName = breadName , breadName != "" else {
            self.delegate.requestDidFailed(message: "bread can't be blank")
            return
        }
        self.delegate.showProgressView()
        DogsClient.getRandomDog(breadName: breadName) { (response) in
            self.delegate.hideProgressView()
            switch response {
            case .failure(let error):
                self.delegate.requestDidFailed(message: error.errorDescription ?? "Server Error")
            case .success(let dog):
                if dog.status == "error" {
                    self.delegate.requestDidFailed(message: dog.message)
                }else {
                    self.delegate.requestSucceed(StringURl: dog.message)
                }
            }
        }
    }
    
}
