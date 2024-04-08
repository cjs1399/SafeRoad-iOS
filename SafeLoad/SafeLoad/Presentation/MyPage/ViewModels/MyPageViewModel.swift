//
//  MyPageViewModel.swift
//  SafeLoad
//
//  Created by 천성우 on 4/8/24.
//

import UIKit

import RxCocoa
import RxSwift

protocol MyPageViewModelInput {
    func noticeDidTap()
    func useTermsDidTap()
    func pushAlarmDidTap()
    func logOutDidTap()
    func withdrawalDidTap()
}

protocol MyPageViewModelOutput {
    var myPageMenuList: BehaviorRelay<[String]> { get }
}

protocol MyPageViewModelType {
    var inputs: MyPageViewModelInput { get }
    var outputs: MyPageViewModelOutput { get }
}

final class MyPageViewModel: MyPageViewModelInput, MyPageViewModelOutput, MyPageViewModelType {
    
    var myPageMenuList: BehaviorRelay<[String]> = BehaviorRelay(value: [])
    
    private let myPageList: [String] = [
        "공지사항", "약관 및 정책", "푸쉬알림 설정", "로그아웃"
    ]
    
    var inputs: MyPageViewModelInput { return self }
    var outputs: MyPageViewModelOutput { return self }
    
    init() {
        myPageMenuList.accept(myPageList)
    }
    
    func noticeDidTap() {
        print("noticeDidTap")
    }
    
    func useTermsDidTap() {
        print("useTermsDidTap")
    }
    
    func pushAlarmDidTap() {
        print("pushAlarmDidTap")
    }
    
    func logOutDidTap() {
        print("logOutDidTap")
    }
    
    func withdrawalDidTap() {
        print("withdrawalDidTap")
    }
}
