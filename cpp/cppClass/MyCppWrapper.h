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
- (void)sendDataInterface;
@end

@protocol MyCppWrapperInterface <NSObject>

- (void)sayHello;
- (void)sendData;

@end

@interface MyCppWrapper : NSObject <MyCppWrapperInterface>

@property (nonatomic, weak) id<MyCppWrapperDelegate> delegate;

- (instancetype)init;

@end

NS_ASSUME_NONNULL_END

