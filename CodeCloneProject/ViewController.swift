//
//  ViewController.swift
//  CodeCloneProject
//
//  Created by 나리강 on 2022/08/17.
//

import UIKit

class ViewController: UIViewController {

    let profileImageView = UIImageView()
    let nameLabel = UILabel()
    let chattingImageView = UIImageView()
    let chattingLabel = UILabel()
    let editImageView = UIImageView()
    let editLabel = UILabel()
    let storyImageView = UIImageView()
    let storyLabel = UILabel()
    let xButton = UIButton()
    
    let presentButton = UIButton()
    let secondButton = UIButton()
    let thirdButton = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [profileImageView,nameLabel,chattingLabel,chattingImageView,editLabel,editImageView,storyImageView,storyLabel,xButton,presentButton,secondButton,thirdButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
    
        
        
    }
    
    
    


}

