#
# Be sure to run `pod lib lint LSTCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'LSTCategory'
    s.version          = '0.2.04281519'
    s.summary          = 'LSTCategory.'
    s.description      = 'A short description of LSTCategory.'
    s.homepage         = 'https://github.com/LoSenTrad/LSTCategory'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'LoSenTrad' => 'LoSenTrad@163.com' }
    s.source           = { :git => 'https://github.com/LoSenTrad/LSTCategory.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '8.0'
    s.static_framework = true
    #s.source_files = 'LSTCategory/Classes/**/*'
    
    
    s.default_subspec = 'Code'
    
    s.subspec 'Code' do |code|
        code.source_files = 'LSTCategory/Classes/Code/**/*'
        code.frameworks = 'UIKit'
    end
    
    s.subspec 'LSTGestureEvents' do |gesture|
        gesture.source_files = 'LSTCategory/Classes/Code/LSTGestureEvents/**/*'
        gesture.frameworks = 'UIKit'
    end
    
    s.subspec 'LSTControlEvents' do |controlevents|
        controlevents.source_files = 'LSTCategory/Classes/Code/LSTControlEvents/**/*'
        controlevents.frameworks = 'UIKit'
    end
    s.subspec 'NSString+LSTString' do |lst_string|
        lst_string.source_files = 'LSTCategory/Classes/Code/NSString+LSTString/**/*'
        lst_string.frameworks = 'UIKit'
    end
    s.subspec 'UIColor+LSTColor' do |lst_color|
        lst_color.source_files = 'LSTCategory/Classes/Code/UIColor+LSTColor/**/*'
        lst_color.frameworks = 'UIKit'
    end
    s.subspec 'UIFont+LSTFont' do |lst_font|
        lst_font.source_files = 'LSTCategory/Classes/Code/UIFont+LSTFont/**/*'
        lst_font.frameworks = 'UIKit'
    end
    s.subspec 'UIView+LSTView' do |lst_view|
        lst_view.source_files = 'LSTCategory/Classes/Code/UIView+LSTView/**/*'
        lst_view.frameworks = 'UIKit'
    end
    s.subspec 'UIImage+LSTImage' do |lst_image|
        lst_image.source_files = 'LSTCategory/Classes/Code/UIImage+LSTImage/**/*'
        lst_image.frameworks = 'UIKit'
        lst_image.dependency 'YYWebImage'
    end
    s.subspec 'NSArray+LSTArray' do |lst_array|
        lst_array.source_files = 'LSTCategory/Classes/Code/NSArray+LSTArray/**/*'
        lst_array.frameworks = 'UIKit'
        lst_array.dependency 'YYModel'
    end
    
    
    # s.resource_bundles = {
    #   'LSTCategory' => ['LSTCategory/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
#    s.dependency 'YYModel'
#    s.dependency 'YYWebImage'
end
