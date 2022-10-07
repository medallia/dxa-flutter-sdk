#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint decibel_sdk.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'decibel_sdk'
  s.version          = '1.0.5'
  s.summary          = 'Decibel SDK flutter binding'
  s.description      = <<-DESC
Decibel SDK flutter binding
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'DecibelSDK' => 'decibel-mobile-sdk@medallia.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.vendored_frameworks = 'DecibelCoreFlutter.xcframework'
end
