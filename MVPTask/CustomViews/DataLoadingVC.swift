//
//  DataLoadingVC.swift
//  MVPTask
//
//  Created by zeyad on 9/17/20.
//  Copyright © 2020 zeyad. All rights reserved.
//

import UIKit

class DataLoadingVC: UIViewController {

    var containerView:UIView!
       
       func showLoadingView(){
           containerView = UIView(frame: view.bounds)
           view.addSubview(containerView)
           
           containerView.backgroundColor = .gray
           containerView.alpha = 0
           
           UIView.animate(withDuration: 0.15) {
               self.containerView.alpha = 0.8
           }
           
           let activivtyIndicator = UIActivityIndicatorView(style: .whiteLarge)
           activivtyIndicator.color = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
           containerView.addSubview(activivtyIndicator)
           
           activivtyIndicator.translatesAutoresizingMaskIntoConstraints = false
           
           NSLayoutConstraint.activate([
               activivtyIndicator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
               activivtyIndicator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
           ])
           activivtyIndicator.startAnimating()
       }
       
       func dismissLoadingView(){
           DispatchQueue.main.async {
               self.containerView.removeFromSuperview()
               self.containerView = nil
           }
       }
}
