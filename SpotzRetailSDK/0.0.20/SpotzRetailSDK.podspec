Pod::Spec.new do |s|

	s.name = 'SpotzRetailSDK'
	s.summary = 'iOS library for SpotzRetail'

	s.version = '0.0.20'
	s.platform = :ios,'7.0'
	s.ios.deployment_target = '7.0'

	s.homepage = 'http://localz.com'
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
			Copyright 2016 Localz Pty Ltd.
			LICENSE
	}
	s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
	s.source = { :git => "https://github.com/localz/Spotz-Retail-iOS-SDK.git", 
				 :tag => s.version }
	
	s.requires_arc = true
	s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
	s.frameworks = 'UIKit','Foundation','CoreLocation'
	s.vendored_frameworks = 'SpotzRetailSDK/SpotzRetailSDK.framework'
end