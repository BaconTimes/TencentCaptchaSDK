# TencentCaptchaSDK
![Build Status](https://img.shields.io/badge/pod-0.1.0-blue.svg)
![Build Status](https://img.shields.io/badge/platform-iOS-dark.svg)
![Build Status](https://img.shields.io/badge/build-success-green.svg)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TencentCaptchaSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TencentCaptchaSDK'
```

# Usage

Import the framework:
```
@import TencentCaptchaSDK;
```

Then, initiaze the instance of TencentCaptchaSDK and set the property of appId, you can register an account in Tencent Open Developer Platform and request for a appId:


```
TencentCaptchaSDK *tcSDK = [TencentCaptchaSDK shareInstance];
tcSDK.appId = @"your appid";
[tcSDK startVerifyCompletion:^(BOOL successed, NSString * _Nullable ticket, NSString * _Nullable randStr) {
    NSLog(@"success = %@, ticket = %@, randStr = %@", @(successed), ticket, randStr);
}];
```

and you will the image like this:
![image](https://gitee.com/EnjoyCodeing/pic/raw/master/baconimg/QQ20201015-140331@2x.png)

## Author

Bacon, ch3coohna@qq.com

## License

TencentCaptchaSDK is available under the MIT license. See the LICENSE file for more info.
