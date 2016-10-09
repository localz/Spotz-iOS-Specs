Pod::Spec.new do |s|

	s.name = "SpotzPushSDK"
	s.summary = "iOS library for SpotzPush"
	
	s.version = "1.0.16.3"
	s.platform = :ios, "8.0"
	
	s.homepage = "http://localz.com"
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
			Copyright 2016 Localz Pty Ltd.
			LICENSE
	}
	s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
	s.source = { :git => "https://github.com/localz/Spotz-Push-iOS-SDK.git", 
				 :tag => s.version,
				 :submodules => true }
	s.requires_arc = true

	s.default_subspec  = 'SpotzPushSDK'
	s.subspec 'SpotzPushSDK' do |pushsdk|
		pushsdk.requires_arc = true
		pushsdk.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
		pushsdk.frameworks = 'UIKit','Foundation','SystemConfiguration','CoreLocation'
		pushsdk.vendored_frameworks = 'SpotzPushSDK/SpotzPushSDK.framework'
	end
end