Pod::Spec.new do |s|

	s.name	= 'SpotzCNCCustomerSDK'
	s.summary = 'SpotzCNCCustomerSDK'

	s.version = '4.0.0'
	s.platform = :ios,'10.0'
	s.ios.deployment_target = '10.0'

	s.homepage = 'http://www.localz.com'
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
			Copyright 2020 Localz Pty Ltd.
			LICENSE
	}
	s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
	s.source = { :git => 'https://github.com/localz/Spotz-CNC-Customer-iOS-SDK.git',
				 :tag => s.version }

	s.requires_arc = true
	s.static_framework = true
	s.swift_version = '5.1'
	s.requires_arc = true
	s.pod_target_xcconfig = { 
		'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
		'DEFINES_MODULE' => 'YES',
		'CLANG_ENABLE_MODULES' => 'YES',
		'SWIFT_OBJC_INTERFACE_HEADER_NAME' => 'SpotzCNCCustomerSDK-Swift.h'
	}

	s.frameworks = 'UIKit','Foundation','CoreLocation','CoreBluetooth'
	s.vendored_frameworks = 'SpotzCNCSDK/SpotzCNCCustomerSDK.framework'
	s.dependency 'SpotzSDK', '~> 4.0.0'
	s.dependency 'LocalzPushSDK', '~> 4.0.0'
end
