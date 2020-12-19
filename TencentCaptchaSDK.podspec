#
# Be sure to run `pod lib lint TencentCaptchaSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TencentCaptchaSDK'
  s.version          = '0.3.0'
  s.summary          = '对腾讯图形验证码的封装.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
对腾讯图形验证码的简易封装，便于集成.
                       DESC

  s.homepage         = 'https://github.com/BaconTimes/TencentCaptchaSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bacon' => 'ch3coohna@qq.com' }
  s.source           = { :git => 'https://github.com/BaconTimes/TencentCaptchaSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.platform = :ios
  s.ios.deployment_target = '9.0'

#  s.source_files = 'TencentCaptchaSDK/Classes/**/*'
  s.vendored_frameworks = 'TencentCaptchaSDK/TencentCaptchaSDK.framework'
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # s.resource_bundles = {
  #   'TencentCaptchaSDK' => ['TencentCaptchaSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
