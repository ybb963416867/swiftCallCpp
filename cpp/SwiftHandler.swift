//
//  SwiftHandler.swift
//  swiftCallCpp
//
//  Created by yangbinbing on 2025/2/5.
//

class SwiftHandler: NSObject, MyCppWrapperDelegate {
    func cppDidCallSwift() {
        print("cppDidCallSwift 被c++ 调用")
    }
}

