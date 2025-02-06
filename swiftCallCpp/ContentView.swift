//
//  ContentView.swift
//  swiftCallCpp
//
//  Created by yangbinbing on 2025/2/5.
//

import SwiftUI
import cpp

struct ContentView: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                    
                    NavigationLink(destination: CppView()) {
                        Text("opgl 使用")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        var cppi = SomeCPPClass("Mr. C++", 11, 0)
                        print(cppi.getAge())
                    }){
                    Text("调用c++")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        SwiftFromCPP.test()
                    }, label: {
                        Text("c++调用 swift")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        }
                    )
                    
                }
                .padding()
            }
        } else {
            // Fallback on earlier versions
        }
   
    }
}

#Preview {
    ContentView()
}
