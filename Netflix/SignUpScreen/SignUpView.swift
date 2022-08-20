//
//  SignUpView.swift
//  CodeCloneProject
//
//  Created by 나리강 on 2022/08/20.
//

import UIKit
import SnapKit

//RootView로서 화면구현
class SignUpView: BaseView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setConstraints()
        setConfigure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let email : SignUpTextField = {
        let view = SignUpTextField()
    
        view.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호" , attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return view
        
    }()
    
    let password : SignUpTextField = {
        let view = SignUpTextField()
        view.attributedPlaceholder = NSAttributedString(string: "비밀번호" , attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return view
        
    }()
    
    let nickname : SignUpTextField = {
        let view = SignUpTextField()
        
        view.attributedPlaceholder = NSAttributedString(string: "닉네임" , attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return view
        
    }()
    
    let location : SignUpTextField = {
        let view = SignUpTextField()
        view.attributedPlaceholder = NSAttributedString(string: "위치" , attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return view
    }()
    
    let recommend : SignUpTextField = {
       let view = SignUpTextField()
        view.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력" , attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        return view
    }()
    

    let signup : UITextField = {
        let view = UITextField()
       
        view.attributedPlaceholder = NSAttributedString(string: "회원가입" , attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
        view.backgroundColor = .white
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 15, weight: .bold)
        return view
    }()
    
    let title : UILabel = {
       let view = UILabel()
        view.text = "JACKFLIX"
        view.textColor = .orange
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 30, weight: .heavy)
        return view
    }()
    
    
    let extraInfo : UILabel = {
       let view = UILabel()
        view.text = "추가 정보 입력"
        view.textColor = .white
        view.textAlignment = .left
        view.font = .systemFont(ofSize: 18)
        view.backgroundColor = .clear
        
        return view
        
    }()
    
    let orangeSwitch : UISwitch = {
        let view = UISwitch()
        view.onTintColor = .orange
        
        return view
    }()
    
    
    //위치
    override func setConstraints() {
        title.snp.makeConstraints { make in
            make.topMargin.equalTo(100)
            make.trailingMargin.equalTo(-30)
            make.leadingMargin.equalTo(30)
            make.height.equalTo(50)
        }
        
        email.snp.makeConstraints { make in
            make.topMargin.equalTo(title.snp.bottom).offset(150)
            make.trailingMargin.equalTo(-30)
            make.leadingMargin.equalTo(30)
            make.height.equalTo(40)
        }
        password.snp.makeConstraints { make in
            make.topMargin.equalTo(email.snp.bottom).offset(20)
            make.trailingMargin.equalTo(-30)
            make.leadingMargin.equalTo(30)
            make.height.equalTo(40)
        }
        
        nickname.snp.makeConstraints { make in
            make.topMargin.equalTo(password.snp.bottom).offset(20)
            make.trailingMargin.equalTo(-30)
            make.leadingMargin.equalTo(30)
            make.height.equalTo(40)
        }
        location.snp.makeConstraints { make in
            make.topMargin.equalTo(nickname.snp.bottom).offset(20)
            make.trailingMargin.equalTo(-30)
            make.leadingMargin.equalTo(30)
            make.height.equalTo(40)
        }
        recommend.snp.makeConstraints { make in
            make.topMargin.equalTo(location.snp.bottom).offset(20)
            make.trailingMargin.equalTo(-30)
            make.leadingMargin.equalTo(30)
            make.height.equalTo(40)
        }
        signup.snp.makeConstraints { make in
            make.topMargin.equalTo(recommend.snp.bottom).offset(20)
            make.trailingMargin.equalTo(-30)
            make.leadingMargin.equalTo(30)
            make.height.equalTo(40)
        }
        extraInfo.snp.makeConstraints { make in
            make.topMargin.equalTo(signup.snp.bottom).offset(20)
            make.leadingMargin.equalTo(30)
            make.height.equalTo(40)
        
        }
        orangeSwitch.snp.makeConstraints { make in
            make.topMargin.equalTo(signup.snp.bottom).offset(20)
            make.trailingMargin.equalTo(-30)
            make.height.equalTo(40)
        
        }
    }
    
    //addSubView
    override func setConfigure() {
        [email,password,nickname,location,recommend,signup,title,extraInfo,orangeSwitch].forEach {
            self.addSubview($0)
        }
        
    }
    
    

}
