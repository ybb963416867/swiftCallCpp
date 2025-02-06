//
//  MyCppWrapper.mm
//  swiftCallCpp
//
//  Created by yangbinbing on 2025/2/5.
//

//#import <Foundation/Foundation.h>
#import "MyCppWrapper.h"
//#import "MyCppClass.hpp"
#include "MyCppClass.hpp"

@implementation MyCppWrapper {
    MyCppClass *_cppInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _cppInstance = new MyCppClass();
    }
    return self;
}

- (void)dealloc {
    delete _cppInstance;
}

- (void)sayHello {
    _cppInstance->sayHello();
    
//    // 调用 Swift 代码
//     if ([self.delegate respondsToSelector:@selector(cppDidCallSwift)]) {
//         [self.delegate cppDidCallSwift];
//     }
    
    // ✅ 这里用 __weak 避免强引用问题
    __weak id<MyCppWrapperDelegate> weakDelegate = self.delegate;
    if ([weakDelegate respondsToSelector:@selector(cppDidCallSwift)]) {
        [weakDelegate cppDidCallSwift];
    }
}

@end

