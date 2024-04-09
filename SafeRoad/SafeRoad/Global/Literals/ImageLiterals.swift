//
//  ImageLiterals.swift
//  SafeLoad
//
//  Created by 천성우 on 4/2/24.
//

import UIKit

enum ImageLiterals {
    enum TabBar {
        static var myLocation_On: UIImage { .load(name: "MyLocation_ic_On").withRenderingMode(.alwaysOriginal) }
        static var myLocation_Off: UIImage { .load(name: "MyLocation_ic_Off").withRenderingMode(.alwaysOriginal) }
        static var News_ic_On: UIImage { .load(name: "News_ic_On").withRenderingMode(.alwaysOriginal) }
        static var News_ic_Off: UIImage { .load(name: "News_ic_Off").withRenderingMode(.alwaysOriginal) }
        static var myPage_ic_On: UIImage { .load(name: "MyPage_ic_On").withRenderingMode(.alwaysOriginal) }
        static var myPage_ic_Off: UIImage { .load(name: "MyPage_ic_Off").withRenderingMode(.alwaysOriginal) }
    }
    
    enum MyPage {
        static var user_ic: UIImage { .load(name: "User_ic").withRenderingMode(.alwaysOriginal)}
    }
}
