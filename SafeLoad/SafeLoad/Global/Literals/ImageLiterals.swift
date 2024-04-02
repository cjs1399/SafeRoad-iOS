//
//  ImageLiterals.swift
//  SafeLoad
//
//  Created by 천성우 on 4/2/24.
//

import UIKit

enum ImageLiterals {
    enum TabBar {
        static var home: UIImage { .load(name: "home_default").withRenderingMode(.alwaysOriginal) }
        static var selected_home: UIImage { .load(name: "home_active").withRenderingMode(.alwaysOriginal) }
        static var actionList: UIImage { .load(name: "actionList_default").withRenderingMode(.alwaysOriginal) }
        static var selected_actionList: UIImage { .load(name: "actionList_active").withRenderingMode(.alwaysOriginal) }
        static var mypage: UIImage { .load(name: "mypage_default").withRenderingMode(.alwaysOriginal) }
        static var selected_mypage: UIImage { .load(name: "mypage_active").withRenderingMode(.alwaysOriginal) }
    }
}
