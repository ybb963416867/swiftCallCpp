//
//  SwiftFromCPP.cpp
//  SwiftCPPDemo
//
//  Created by Zakk Hoyt on 2024-10-19.
//

#include "SwiftFromCPP.hpp"
#include "swiftCallCpp-Swift.h"

void SwiftFromCPP::test() {
    std::cout << "hello from c++" << std::endl;
    auto si = swiftCallCpp::SomeSwiftClass::init("test name", 53, 99);
    std::cout << "si.name: " << std::string(si.getName()) <<  std::endl;
    std::cout << "si.age: " << si.getAge() <<  std::endl;
    std::cout << "si.age: " << si.getLucky() << std::endl;
}
