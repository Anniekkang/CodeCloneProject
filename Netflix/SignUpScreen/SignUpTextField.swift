//
//  SignUpTextField.swift
//  CodeCloneProject
//
//  Created by 나리강 on 2022/08/20.
//

import UIKit

class SignUpTextField : UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp(){
        backgroundColor = .gray
        textAlignment = .center
        font = .systemFont(ofSize: 15)
        layer.cornerRadius = 5
        
        
        }
        
}
    

