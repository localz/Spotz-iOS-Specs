Pod::Spec.new do |s|

	s.name = "LocalzDriverSDK"
	s.summary = "iOS library for LocalzDriverSDK"
	
	s.version = "0.7.2"
	s.platform = :ios, "8.0"
	s.ios.deployment_target = '8.0'

	s.homepage = "http://www.localz.com"
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
			Copyright 2018 Localz Pty Ltd.
			LICENSE
	}
	s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
	s.source = { :git => 'https://github.com/localz/Localz-Driver-iOS-SDK.git', 
				 :tag => s.version }
	
	s.requires_arc = true
	s.frameworks = 'UIKit','Foundation','SystemConfiguration','CoreLocation'
	s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
	s.vendored_frameworks = 'LocalzDriverSDK/LocalzDriverSDK.framework'
	s.dependency 'SpotzRTSDK', '~> 3.2.6'
	s.dependency 'SpotzPushSDK'
	s.dependency 'YapDatabase'
end