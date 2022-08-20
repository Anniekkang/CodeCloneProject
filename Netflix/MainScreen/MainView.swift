//
//  MainView.swift
//  CodeCloneProject
//
//  Created by 나리강 on 2022/08/21.
//

import UIKit

class MainView: BaseView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConfigure()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let screenView : UIImageView = {
       let view = UIImageView()
        view.image = UIImage(named:"\(movieModel(rawValue: Int.random(in: 0...4))!)")
        view.contentMode = .scaleAspectFill
        view.clipsToBounds = true
        
        print(movieModel(rawValue: Int.random(in: 0...4))!)
        
        return view
        
    }()
    
    let Nlogo : UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 25, weight: .heavy)
        view.text = "N"
        return view
    }()
    
    let programLabel : MainLabel = {
        let view = MainLabel()
        view.text = "TV프로그램"
        return view
    }()
    
    let movieLabel : MainLabel = {
       let view = MainLabel()
        view.text = "영화"
        return view
    }()
    
    let favoriteLabel : MainLabel = {
        let view = MainLabel()
        view.text = "내가 찜한 콘텐츠"
        return view
        
    }()

    let checkImageView : UIImageView = {
       let view = UIImageView()
        view.image = UIImage(named: "check")
        return view
    }()
    
    let checkLabel : UILabel = {
        let view = UILabel()
        view.text = "내가 찜한 컨텐츠"
        view.font = .systemFont(ofSize: 13)
        view.textColor = .white
        return view
        
    }()
    
    let playButton : UIButton = {
       let view = UIButton()
        view.setImage(UIImage(named: "play_normal"), for: .normal)
        return view
    }()
    
    let infoImageView : UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "info")
        
        return view
    }()
    
    let infoLabel : UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.font = .systemFont(ofSize: 13)
        view.text = "정보"
        return view
    }()
    
    let imageLabel : UILabel = {
       let view = UILabel()
        view.text = "미리보기"
        view.textColor = .white
        view.font = .systemFont(ofSize: 20, weight: .bold)
        return view
    }()
    
    let imageFirst : PosterImageView = {
       let view = PosterImageView(frame: CGRect(x: 0, y: 100, width: 100, height: 100))
        view.image = UIImage(named: "겨울왕국2")
        return view

    }()

    let imageSecond : PosterImageView = {
        let view = PosterImageView(frame: CGRect(x: 30, y: 100, width: 100, height: 100))
         view.image = UIImage(named: "겨울왕국2")
         return view
    }()

    let imageThird : PosterImageView = {
        let view = PosterImageView(frame: CGRect(x: 60, y: 100, width: 100, height: 100))
         view.image = UIImage(named: "겨울왕국2")
         return view
    }()



    
    
    override func setConfigure() {
        [Nlogo,programLabel,movieLabel,favoriteLabel,checkImageView,checkLabel,playButton,infoLabel,infoImageView,imageLabel,imageFirst,imageSecond,imageThird,screenView].forEach {
            self.addSubview($0)
        }
    }
    override func setConstraints() {

        
        Nlogo.snp.makeConstraints { make in
            make.topMargin.equalTo(30)
            make.leadingMargin.equalTo(20)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
        programLabel.snp.makeConstraints { make in
            make.topMargin.equalTo(30)
            make.leading.equalTo(screenView).multipliedBy(0.6)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        
        screenView.snp.makeConstraints { make in
            
        }
        
      
    }
    
    
}
