#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint medallia_dxa.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'medallia_dxa'
  s.version          = '3.0.0'
  s.summary          = 'The Medallia DXA SDK for Flutter.'
  s.description         = "The MedalliaDXA SDK for Flutter. The SDK supports iOS 15.0 and above."
  s.homepage         = 'https://developer.medallia.com/medallia-dxa/docs/getting-started-3'
  s.license          = { :file => '../LICENSE' }
  s.authors             = { "Medallia" => "cocoapods@medallia.com" }
  s.source           = { :path => '.' }
  s.source_files = 'medallia_dxa/Sources/medallia_dxa/**/*'
  s.dependency 'Flutter'
  s.dependency 'medallia-dxa-ios-flutter-sdk', '~> 4.0.0'
  s.platform = :ios, '15.0'
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
