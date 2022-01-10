#
# Be sure to run `pod lib lint ExtensionKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  
  s.version          = '0.1.0'
  s.homepage         = 'https://github.com/kirill-kovalev/ExtensionKit'
  s.source           = { :git => 'git@github.com:kirill-kovalev/ExtensionKit.git', :tag => s.version.to_s }
  
  s.author           = { 'Kirill Kovalev' => 'kirilkovalev@yandex.ru' }
  s.summary          = 'A short description of ExtensionKit.'
  s.name             = 'ExtensionKit'

  
#  s.source_files = 'ExtensionKit/**/*.swift'
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  
  s.default_subspec = 'All'
  
  s.subspec 'Foundation' do |cs|
    cs.frameworks = 'Foundation'
    cs.source_files = 'ExtensionKit/Foundation/**/*.swift'
  end
  
  s.subspec 'CoreGraphics' do |ds|
    ds.frameworks = 'CoreGraphics'
    ds.source_files = 'ExtensionKit/CoreGraphics/**/*.swift'
  
    ds.dependency 'ExtensionKit/Foundation'
  end
  
  s.subspec 'UIKit' do |es|
    es.frameworks = 'UIKit'
    es.source_files = 'ExtensionKit/UIKit/**/*.swift'
    
    es.dependency 'ExtensionKit/CoreGraphics'
    es.dependency 'ExtensionKit/Foundation'
  end
  
  s.subspec 'All' do |fs|
    fs.dependency 'ExtensionKit/UIKit'
    fs.dependency 'ExtensionKit/CoreGraphics'
    fs.dependency 'ExtensionKit/Foundation'
    fs.dependency 'ExtensionKit/BonMot'
  end

  s.subspec 'BonMot' do |gs|
    gs.frameworks = 'UIKit'
    gs.dependency 'BonMot'
    gs.source_files = 'ExtensionKit/BonMot/**/*.swift'

    # gs.dependency 'ExtensionKit/UIKit'
    # gs.dependency 'ExtensionKit/CoreGraphics'
    # gs.dependency 'ExtensionKit/Foundation'
  end
  
#  s.subspec 'CoreStore' do |fs|
#    fs.source_files = 'ExtensionKit/CoreStore/**/*.swift'
#    fs.dependency 'CoreStore'
#  end
end



#
## This description is used to generate tags and improve search results.
##   * Think: What does it do? Why did you write it? What is the focus?
##   * Try to keep it short, snappy and to the point.
##   * Write the description between the DESC delimiters below.
##   * Finally, don't worry about the indent, CocoaPods strips it!
#
#s.description      = <<-DESC
#TODO: Add long description of the pod here.
#                     DESC
#
#s.homepage         = 'https://github.com/kirill-kovalev/ExtensionKit'
## s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
#s.license          = { :type => 'MIT', :file => 'LICENSE' }
#s.source           = { :git => 'https://github.com/kirill-kovalev/ExtensionKit.git', :tag => s.version.to_s }
## s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
#
#s.ios.deployment_target = '11.0'
#s.source_files = 'ExtensionKit/**/*.swift'
