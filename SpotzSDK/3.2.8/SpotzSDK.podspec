Pod::Spec.new do |s|

	s.name = 'SpotzSDK'
	s.summary = 'iOS library for Localz Platform'

	s.version = '3.2.8'
	s.platform = :ios,'8.0'
	s.ios.deployment_target = '8.0'
	
	s.homepage = 'http://localz.com'
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
			Copyright 2019 Localz Pty Ltd.
			LICENSE
	}
	s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
	s.source = { :git => 'https://github.com/localz/Spotz3-iOS-SDK.git',
				 :tag => s.version }
	
	s.requires_arc = true
	s.preserve_paths = 'SpotzSDK.framework'
	s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
	s.frameworks = 'CoreLocation','SystemConfiguration','Foundation'
	s.vendored_frameworks = 'SpotzSDK/SpotzSDK.framework'
	s.dependency 'YapDatabase/Standard/Core'
end
