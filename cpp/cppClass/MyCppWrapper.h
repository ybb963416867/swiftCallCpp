//
//  MyCppWrapper.h
//  swiftCallCpp
//
//  Created by yangbinbing on 2025/2/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MyCppWrapperDelegate <NSObject>
- (void)cppDidCallSwift;
@end

@interface MyCppWrapper : NSObject

@property (nonatomic, weak) id<MyCppWrapperDelegate> delegate;

- (instancetype)init;
- (void)sayHello;

@end

NS_ASSUME_NONNULL_END

