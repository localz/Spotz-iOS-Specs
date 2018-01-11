Pod::Spec.new do |s|

	s.name = "SpotzPushSDK"
	s.summary = "iOS library for SpotzPush"
	
	s.version = "1.3.1.2"
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
	s.source = { :git => "https://github.com/localz/Spotz-Push-iOS-SDK.git", 
				 :tag => s.version }
	
	s.requires_arc = true
	s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
	s.frameworks = 'UIKit','Foundation','SystemConfiguration','CoreLocation'
	s.vendored_frameworks = 'SpotzPushSDK/SpotzPushSDK.framework'
end