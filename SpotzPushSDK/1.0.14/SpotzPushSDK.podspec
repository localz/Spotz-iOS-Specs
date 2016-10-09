Pod::Spec.new do |s|

	s.name = "SpotzPushSDK"
	s.summary = "iOS library for SpotzPush"
	
	s.version = "1.0.14"
	s.platform = :ios, "8.0"
	
	s.homepage = "http://localz.com"
	s.license = {
		:type => 'Commercial',
		:text => <<-LICENSE
			Copyright 2016 Localz Pty Ltd.
			LICENSE
	}
	s.author = { 'Localz Pty Ltd' => 'info@localz.com' }
	s.source = { :git => "https://github.com/localz/Spotz-Push-SDK-iOS.git", 
				 :tag => s.version,
				 :submodules => true }
	s.requires_arc = true

	s.default_subspec  = 'SpotzPushSDK'
	s.subspec 'SpotzPushSDK' do |pushsdk|
		#pushsdk.dependency 'AFNetworking','~>2.6.3'
		#networksdk.source_files = 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/**/*.{h,m}', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/*.{h,m}', 'libs/SalesforceNetwork/SalesforceNetwork.h'
		#networksdk.public_header_files = 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Action/CSFAction.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Protocols/CSFActionInput.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Protocols/CSFActionModel.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Protocols/CSFActionValue.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/OAuth/CSFAuthRefresh.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Utilities/CSFAvailability.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Utilities/CSFDefines.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Utilities/CSFForceDefines.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Protocols/CSFIndexedEntity.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Model/CSFInput.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Queue/CSFNetwork.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Protocols/CSFNetworkOutputCache.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Model/CSFOutput.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Support/CSFParameterStorage.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Network/Action/CSFSalesforceAction.h', 'libs/SalesforceNetwork/SalesforceNetwork/SalesforceNetwork/Classes/Additions/SFUserAccount+SalesforceNetwork.h', 'libs/SalesforceNetwork/SalesforceNetwork.h'
		# pushsdk.requires_arc = true
		pushsdk.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
		pushsdk.frameworks = 'UIKit','Foundation','SystemConfiguration','CoreLocation'
		pushsdk.vendored_frameworks = 'SpotzPushSDK/SpotzPushSDK.framework'
	end
end