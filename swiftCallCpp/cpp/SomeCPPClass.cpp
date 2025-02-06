//
//  SomeCPPClass.cpp
//  SwiftCPPDemo
//
//  Created by Zakk Hoyt on 2024-10-19.
//

#include "SomeCPPClass.hpp"


SomeCPPClass::SomeCPPClass(
   std::string name,
   u_int8_t age,
   u_int64_t tally
) {
    this->name = name;
    this->age = age;
    this->tally = tally;
    printf("调用了");
}

std::string SomeCPPClass::getName() {
    return name;
}
void SomeCPPClass::setName(std::string name) {
    this->name = name;
}


u_int8_t SomeCPPClass::getAge() {
    return age;
}

void SomeCPPClass::setAge(
    u_int8_t age
) {
    this->age = age;
}


u_int64_t SomeCPPClass::getTally() {
    return tally;
}

void SomeCPPClass::setTally(
    u_int64_t tally
) {
    this->tally = tally;
}
