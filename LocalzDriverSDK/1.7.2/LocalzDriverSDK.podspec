Pod::Spec.new do |s|

	s.name = "LocalzDriverSDK"
	s.summary = "iOS library for LocalzDriverSDK"

	s.version = "1.7.2"
	s.platform = :ios, "10.0"
	s.ios.deployment_target = '10.0'

	s.homepage = "http://www.localz.com"
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
			Copyright 2020 Localz Pty Ltd.
			LICENSE
	}
	s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
	s.source = { :git => 'https://github.com/localz/Localz-Driver-iOS-SDK.git',
				 :tag => s.version }

	s.requires_arc = true
	s.frameworks = 'UIKit','Foundation','SystemConfiguration','CoreLocation'
	s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
	s.vendored_frameworks = 'LocalzDriverSDK/LocalzDriverSDK.framework'
	s.dependency 'SpotzRTSDK', '~> 3.4.5-alpha'
	s.dependency 'LocalzPushSDK'
end
