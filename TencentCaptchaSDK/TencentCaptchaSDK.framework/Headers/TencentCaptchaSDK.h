//
//  TencentCaptchaSDK.h
//  TencentCaptchaSDK
//
//  Created by 李培根 on 2020/10/14.
//

#import <Foundation/Foundation.h>
#import <TencentCaptchaSDK/TCCaptchaDelegate.h>

typedef void (^TCWebCodeResultCallback)(BOOL successed, NSString * _Nullable ticket, NSString *_Nullable randStr);

NS_ASSUME_NONNULL_BEGIN

@interface TencentCaptchaSDK : NSObject

@property (nonatomic, copy) NSString *appId;

@property (nonatomic, weak) id <TCCaptchaViewDelegate> delegate;

+ (instancetype)shareInstance;

- (void)startVerifyCompletion:(TCWebCodeResultCallback)completion;

@end

NS_ASSUME_NONNULL_END

//! Project version number for TencentCaptchaSDK.
FOUNDATION_EXPORT double TencentCaptchaSDKVersionNumber;

//! Project version string for TencentCaptchaSDK.
FOUNDATION_EXPORT const unsigned char TencentCaptchaSDKVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <TencentCaptchaSDK/PublicHeader.h>
