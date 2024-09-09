#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint medallia_dxa.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'medallia_dxa'
  s.version          = '2.4.1'
  s.summary          = 'The MedalliaDXA SDK for Flutter.'
  s.description         = "The MedalliaDXA SDK for Flutter. The SDK supports iOS 11.0 and above."
  s.homepage         = 'https://developer.medallia.com/medallia-dxa/docs/getting-started-3'
  s.license             = { :type => "Commercial", :text => "Copyright © 2023 Medallia. Use subject to licensing terms." }
  s.authors             = { "Medallia" => "cocoapods-dxa@medallia.com" }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.vendored_frameworks = 'MedalliaDXAFlutter.xcframework'
end
