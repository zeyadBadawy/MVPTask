//
//  MainVC.swift
//  MVPTask
//
//  Created by zeyad on 9/17/20.
//  Copyright © 2020 zeyad. All rights reserved.
//

import UIKit
import SDWebImage

class MainVC: DataLoadingVC {

    @IBOutlet weak var dogImageView:UIImageView!
    @IBOutlet weak var getDogButton:UIButton!
    @IBOutlet weak var breadTF:UITextField!
    
    var presenter: MainPresenter?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = MainPresenter(delegate: self)
        configureUI()
    }

    func configureUI(){
        self.dogImageView.layer.cornerRadius = 125
        self.getDogButton.layer.cornerRadius = 20
        self.dogImageView.contentMode = .scaleAspectFill
    }

    @IBAction func  getNewDogButtonTapped(_ sender: UIButton){
        self.presenter?.getDog(breadName: breadTF.text)
    }

}
extension MainVC: MainDelegate {
    
    func showProgressView() {
        self.showLoadingView()
    }
    
    func hideProgressView() {
        self.dismissLoadingView()
    }
    
    func requestSucceed(StringURl: String) {
        dogImageView.sd_setImage(with: URL(string: StringURl), placeholderImage: UIImage(named: "placeholder.png"))
        self.view.layoutSubviews()

    }
    
    func requestDidFailed(message: String) {
        let ac = UIAlertController(title: "Error", message:message , preferredStyle: .alert)
        let tryAgianAction = UIAlertAction(title: "Try Again", style: .cancel, handler: nil)
        ac.addAction(tryAgianAction)
        self.present(ac,animated: true)
    }
    
    
}
