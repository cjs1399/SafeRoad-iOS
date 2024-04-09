//
//  MyPageListTableViewCell.swift
//  SafeLoad
//
//  Created by 천성우 on 4/8/24.
//

import UIKit

import Then
import SnapKit

final class MyPageListTableViewCell: UITableViewCell {
    
    private let mainTitleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setStyles()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension MyPageListTableViewCell {
    
    private func setStyles() {
        backgroundColor = .white000
        selectionStyle = .none
        
        mainTitleLabel.do {
            $0.font = .fontGuide(.body2_bold)
            $0.textColor = .black000
        }
    }
    
    private func setLayout() {
        addSubviews(mainTitleLabel)
        
        mainTitleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(SizeLiterals.Screen.screenWidth * 0.048)
            $0.centerY.equalToSuperview()
        }
    }
}

extension MyPageListTableViewCell {
    
    func configureWith(componentTitle: String) {
        mainTitleLabel.text = componentTitle
    }
    
    func setLogOutStyle() {
        mainTitleLabel.textColor = .red400
    }
}
