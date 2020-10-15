# TencentCaptchaSDK

[![CI Status](https://img.shields.io/travis/lipeigen/TencentCaptchaSDK.svg?style=flat)](https://travis-ci.org/lipeigen/TencentCaptchaSDK)
[![Version](https://img.shields.io/cocoapods/v/TencentCaptchaSDK.svg?style=flat)](https://cocoapods.org/pods/TencentCaptchaSDK)
[![License](https://img.shields.io/cocoapods/l/TencentCaptchaSDK.svg?style=flat)](https://cocoapods.org/pods/TencentCaptchaSDK)
[![Platform](https://img.shields.io/cocoapods/p/TencentCaptchaSDK.svg?style=flat)](https://cocoapods.org/pods/TencentCaptchaSDK)

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

`@import TencentCaptchaSDK;`

Then, initiaze the instance of TencentCaptchaSDK and set the property of appId, you can register an account in Tencent Open Developer Platform and request for a appId:

`

TencentCaptchaSDK *tcSDK = [TencentCaptchaSDK shareInstance];

  tcSDK.appId = @"your appid";

  [tcSDK startVerifyCompletion:^(**BOOL** successed, NSString * **_Nullable** ticket, NSString * **_Nullable** randStr) {

​    NSLog(@"success = %@, ticket = %@, randStr = %@", @(successed), ticket, randStr);

  }];

`

## Author

lipeigen, ch3coohna@qq.com

## License

TencentCaptchaSDK is available under the MIT license. See the LICENSE file for more info.
