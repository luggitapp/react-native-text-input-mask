require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name = 'RNTextInputMask'
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = 'https://github.com/luggitapp/react-native-text-input-mask'
  s.license      = 'MIT'
  s.authors      = package['author']
  s.source       = { :git => 'https://github.com/luggitapp/react-native-text-input-mask.git' }
  s.platform     = :ios, '8.0'
  s.framework    = 'UIKit'
  s.source_files = 'ios/*.{h,m}'
  s.dependency 'React'
  s.dependency 'InputMask'
end
