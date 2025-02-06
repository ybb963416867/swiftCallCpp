//
//  SomeSwiftClass.swift
//  SwiftCPPDemo
//
//  Created by Zakk Hoyt on 2024-10-19.
//

import Foundation


public class SomeSwiftClass {
    public init(
        name: String,
        age: UInt8,
        lucky: UInt8
    ) {
        self.name = name
        self.age = age
        self.lucky = lucky
    }
    
    public var name: String
    public var age: UInt8
    public var lucky: UInt8
    
    public func greet(message: String) -> String {
        "Hi I'm \(name)"
    }

}
