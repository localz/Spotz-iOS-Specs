Pod::Spec.new do |s|
	s.name	= 'SpotzRTSDK'
	s.platform = :ios,'8.0'
	s.ios.deployment_target = '8.0'
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
			Copyright 2016 Localz Pty Ltd.
			LICENSE
	}
	s.version = '3.1.4.6'
	s.summary = 'iOS library for Localz Platform'
	s.homepage = 'http://localz.com'
	s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
	s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
	s.preserve_paths = 'SpotzSDK.framework'
	s.vendored_frameworks = 'SpotzSDK/SpotzSDK.framework'
	s.requires_arc = true
	s.source = { :git => 'https://github.com/localz/Spotz3-iOS-SDK.git',:tag=> '3.1.4.6' }
	s.frameworks = 'CoreLocation','SystemConfiguration','Foundation'
	s.dependency 'YapDatabase/Standard/Core'
	s.dependency 'Socket.IO-Client-Swift'
end
