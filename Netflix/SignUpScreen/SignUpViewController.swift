//
//  SignUpViewController.swift
//  CodeCloneProject
//
//  Created by 나리강 on 2022/08/20.
//

import UIKit

class SignUpViewController: BaseViewController {

    //customView -> rootView 로 연결
    let mainView = SignUpView()
    
    override func loadView() {
        self.view = mainView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


}
