//
//  SomeCPPClass.hpp
//  SwiftCPPDemo
//
//  Created by Zakk Hoyt on 2024-10-19.
//

#ifndef SomeCPPClass_hpp
#define SomeCPPClass_hpp


#include <stdio.h>
#include <iostream>


class SomeCPPClass {
  
public:
   SomeCPPClass(
        std::string name,
        u_int8_t age,
        u_int64_t tally
    );
    
    std::string getName();
    void setName(std::string name);
    
    u_int8_t getAge();
    void setAge(u_int8_t age);
    
    u_int64_t getTally();
    void setTally(u_int64_t tally);
private:
    
    // string str("GeeksforGeeks");
    std::string name;
    u_int8_t age;
    u_int64_t tally;

};
#endif /* SomeCPPClass_hpp */

