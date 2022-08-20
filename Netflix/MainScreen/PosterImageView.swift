//
//  PosterImageView.swift
//  CodeCloneProject
//
//  Created by 나리강 on 2022/08/21.
//

import UIKit

class PosterImageView : UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setup(){
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = 4
        layer.frame.size.width * 0.5
     
    }
    
}
