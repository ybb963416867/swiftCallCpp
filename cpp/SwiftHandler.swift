//
//  SwiftHandler.swift
//  swiftCallCpp
//
//  Created by yangbinbing on 2025/2/5.
//

public class SwiftHandler: NSObject, MyCppWrapperDelegate, MyCppWrapperInterface {
    
    private let wrapper = MyCppWrapper()
    
    private override init() {
        super.init()
        wrapper.delegate = self
    }
    
    public static let instance = SwiftHandler()
    
    public func sendDataInterface() {
        print("sendDataInterface")
    }
    
    public func cppDidCallSwift() {
        print("cppDidCallSwift 被c++ 调用")
    }
    
    
    public func sayHello(){
        wrapper.sayHello()
    }
    
    public func sendData(){
        wrapper.sendData()
    }

    
}

