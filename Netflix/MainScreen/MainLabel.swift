//
//  MainLabel.swift
//  CodeCloneProject
//
//  Created by 나리강 on 2022/08/21.
//

import UIKit

class MainLabel : UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        textColor = .white
        textAlignment = .center
        UIFont.systemFont(ofSize: 17, weight: .bold)
      
        
    }
    
    
}
