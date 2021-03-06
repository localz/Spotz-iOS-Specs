Pod::Spec.new do |s|

	s.name = 'SpotzSDKBeta'
	s.summary = 'iOS library for Localz Platform'

	s.version = '3.1.4.5'
	s.platform = :ios,'7.0'
	s.ios.deployment_target = '7.0'
	
	s.homepage = 'http://localz.com'
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
			Copyright 2017 Localz Pty Ltd.
			LICENSE
	}
	s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
	s.source = { :git => 'https://github.com/localz/Spotz3-iOS-SDK.git',
				 :tag => '3.1.4.5_beta' }
	
	s.requires_arc = true
	s.preserve_paths = 'SpotzSDK.framework'
	s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
	s.frameworks = 'CoreLocation','SystemConfiguration','Foundation'
	s.vendored_frameworks = 'SpotzSDK/SpotzSDK.framework'
	s.dependency 'YapDatabase/Standard/Core'
end
