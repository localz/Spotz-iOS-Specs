Pod::Spec.new do |s|
  
  s.name = "SpotzPushSDK"
  s.summary = "iOS library for SpotzPush"
  
  s.version = "1.4.5"
  s.platform = :ios, "8.0"
  s.ios.deployment_target = '8.0'

  s.homepage = "http://www.localz.com"
  s.license = {
    :type => 'Commercial',
    :text => <<-LICENSE
      Copyright 2019 Localz Pty Ltd.
      LICENSE
  }
  s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
  s.source = { :git => "https://github.com/localz/Spotz-Push-iOS-SDK.git", 
         :tag => s.version }
  s.requires_arc = true
  s.frameworks = 'UIKit','Foundation','SystemConfiguration','CoreLocation'

  s.default_subspecs = 'Standard'
  s.subspec 'Standard' do |ss|
    ss.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
    ss.vendored_frameworks = 'SpotzPushSDK/SpotzPushSDK.framework'
    ss.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'IS_SPOTZPUSHSDK_APP_EXTENSION=0' }
  end
  s.subspec 'Extension' do |ss|
    ss.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
    ss.vendored_frameworks = 'SpotzPushSDK/SpotzPushSDK.framework'
    ss.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'IS_SPOTZPUSHSDK_APP_EXTENSION=1' }  
  end
end
