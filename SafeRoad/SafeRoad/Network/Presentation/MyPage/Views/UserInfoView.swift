//
//  UserInfoView.swift
//  SafeLoad
//
//  Created by 천성우 on 4/8/24.
//

import UIKit

import SnapKit
import Then

final class UserInfoView: BaseView {
    
    // MARK: - UI Components
    
    private var userImage = UIImageView()
    private var userName = UILabel()
    
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    // MARK: - UI Components Property
    
    override func setStyles() {
        userImage.do {
            $0.image = ImageLiterals.MyPage.user_ic
        }
        
        userName.do {
            $0.text = "Mong9님의 마이페이지"
            $0.font = .fontGuide(.head1)
            $0.textColor = .black000
        }
    }
    
    // MARK: - Layout Helper
    
    override func setLayout() {
        addSubviews(userImage, userName)
        
        userImage.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.centerX.equalToSuperview()
            $0.height.equalTo(SizeLiterals.Screen.screenHeight * 90 / 812)
            $0.width.equalTo(SizeLiterals.Screen.screenWidth * 111 / 375)
        }
        
        userName.snp.makeConstraints {
            $0.top.equalTo(userImage.snp.bottom).offset(SizeLiterals.Screen.screenHeight * 11 / 812)
            $0.centerX.equalToSuperview()
        }
    }
    
    // MARK: - @objc Methods
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
