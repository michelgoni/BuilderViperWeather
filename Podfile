source 'https://github.com/Accengage/CocoaPodsSpecs.git'
source 'https://github.com/CocoaPods/Specs'

# Uncomment this line to define a global platform for your project
 platform :ios, '9.0'

target '(B)ViperWeatherTest' do
  use_frameworks!
  	pod 'Alamofire', '~> 4.4'
	pod 'SwiftyJSON’, '~> 3.0’
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
  end

