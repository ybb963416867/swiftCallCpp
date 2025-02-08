//
//  CppView.swift
//  swiftCallCpp
//
//  Created by yangbinbing on 2025/2/5.
//

import SwiftUI
import Foundation

public struct CppView : View {
    public init(){}
    public var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                ScrollView {
                    VStack{
                        Button(action: {
                            let swiftHander = SwiftHandler.instance
                            swiftHander.sayHello()
                            swiftHander.sendData()
                        }, label: {
                            Text("调用c++")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            }
                        )
                    }
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

