# CocoaPods Initial
```
pod init
```

#
```
# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'ios_mvvm' do
    # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
    use_frameworks!

    # Pods for ios_mvvm
    pod 'ReactiveCocoa', '~> 7.0'
    pod 'Alamofire', '~> 4.7'
    pod 'SnapKit', '~> 4.0.0'

    target 'ios_mvvmTests' do
        inherit! :search_paths
        # Pods for testing
    end

    target 'ios_mvvmUITests' do
        inherit! :search_paths
        # Pods for testing
    end

end
```

# CocoaPods Install
```
pod install
```
