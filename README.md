# Spotz-iOS-Specs
Quick shortcuts for referencing Localz SDK pods in your projects

## How to use
Inside your podfile include ```https://github.com/localz/Spotz-iOS-Specs.git``` as a source, and ```https://github.com/CocoaPods/Specs.git``` as a source if you are using Cocoapod pods as well.
Now you can reference Localz pods simply with ```pod 'SpotzSDK'```

## Example
A sample podfile for reference
```
platform :ios, '8.0'

project 'testapp'

target 'testapp' do
	source 'https://github.com/CocoaPods/Specs.git' # (SpotzSDK has Cocoapod dependencies, so include Cocoapods as a source too)
	source 'https://github.com/localz/Spotz-iOS-Specs.git'

	pod 'SpotzPushSDK'
	pod 'SpotzRetailSDK'
	pod 'SpotzSDK' 
end
```
