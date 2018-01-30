Pod::Spec.new do |s|
  
	s.name	= 'SpotzPushSDK'
  s.version = '1.4'
	s.platform = :ios,'8.0'
	s.ios.deployment_target = '8.0'
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
			Copyright 2018 Localz Pty Ltd.
			LICENSE
	}
	s.summary = 'iOS library for SpotzPush'
	s.homepage = 'http://localz.com'
	s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
	s.requires_arc = true
  s.source = { :git => "https://github.com/localz/Spotz-Push-SDK-iOS.git", :tag => s.version }
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
