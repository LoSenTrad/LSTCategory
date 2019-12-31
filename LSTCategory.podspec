#
# Be sure to run `pod lib lint LSTCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LSTCategory'
  s.version          = '0.1.12311529'
  s.summary          = 'LSTCategory.'
  s.description      = 'A short description of LSTCategory.'
  s.homepage         = 'https://github.com/LoSenTrad/LSTCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LoSenTrad' => 'LoSenTrad@163.com' }
  s.source           = { :git => 'https://github.com/LoSenTrad/LSTCategory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'LSTCategory/Classes/**/*'
  
  
  s.default_subspec = 'Code'
  
  s.subspec 'Code' do |code|
      code.source_files = 'LSTCategory/Classes/Code/**/*'
      #core.public_header_files = 'ZFPlayer/Classes/Core/**/*.h'
      code.frameworks = 'UIKit'
  end
  
  s.subspec 'LSTGestureEvents' do |gesture|
      gesture.source_files = 'LSTCategory/Classes/Code/LSTGestureEvents/**/*'
      #core.public_header_files = 'ZFPlayer/Classes/Core/**/*.h'
      gesture.frameworks = 'UIKit'
  end
  
  s.subspec 'LSTControlEvents' do |controlevents|
       controlevents.source_files = 'LSTCategory/Classes/Code/LSTControlEvents/**/*'
       #core.public_header_files = 'ZFPlayer/Classes/Core/**/*.h'
       controlevents.frameworks = 'UIKit'
   end
  
  
  # s.resource_bundles = {
  #   'LSTCategory' => ['LSTCategory/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'YYModel'
end
