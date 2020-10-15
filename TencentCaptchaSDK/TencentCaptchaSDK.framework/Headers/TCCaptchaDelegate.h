//
//  TCCaptchaDelegate.h
//  TencentCaptchaSDK
//
//  Created by 李培根 on 2020/10/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TCCaptchaViewDelegate <NSObject>
@optional
/// 验证码将要显示的回调
- (void)tcWebCodeWillShow;

/// 验证码验证完成的回调
- (void)tcWebCodeDidHide;

/// 需要返回承载图形验证码UI的View，如果不设置，则默认是    [UIApplication sharedApplication].delegate.window
- (UIView *)tcWebCodeContainerView;

@end

NS_ASSUME_NONNULL_END
