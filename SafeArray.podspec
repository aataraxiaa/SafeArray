#
# Be sure to run `pod lib lint SafeArray.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SafeArray'
  s.version          = '0.1.0'
  s.summary          = 'SafeArray is attended to be used in place of a general Swift Array. It provides thread-safe access to its underlying Array collection.'

  s.description      = <<-DESC
  SafeArray is attended to be used in place of a general Swift Array
  It provides thread-safe access to it's underlying Array collection.
  Thread-safe versions Array/Collection methods such as append, map are provided.
                       DESC

  s.homepage         = 'https://github.com/superpeteblaze/SafeArray'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Pete Smith' => 'peadar81@gmail.com' }
  s.source           = { :git => 'https://github.com/superpeteblaze/SafeArray.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/superpeteblaze'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SafeArray/Classes/**/*'
end
