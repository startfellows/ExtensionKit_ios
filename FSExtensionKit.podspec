#
# Be sure to run `pod lib lint ExtensionKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  
  s.version          = '0.1.1'
  s.homepage         = 'https://github.com/kirill-kovalev/ExtensionKit'
  s.source           = { :git => 'git@github.com:kirill-kovalev/ExtensionKit.git', :tag => s.version.to_s }
  
  s.author           = { 'Kirill Kovalev' => 'kirilkovalev@yandex.ru' }
  s.summary          = 'A short description of ExtensionKit.'
  s.name             = 'FSExtensionKit'

  
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
  
    ds.dependency 'FSExtensionKit/Foundation'
  end
  
  s.subspec 'UIKit' do |es|
    es.frameworks = 'UIKit'
    es.source_files = 'ExtensionKit/UIKit/**/*.swift'
    
    es.dependency 'FSExtensionKit/CoreGraphics'
    es.dependency 'FSExtensionKit/Foundation'
  end
  
  s.subspec 'BonMot' do |gs|
    gs.frameworks = 'UIKit'
    gs.dependency 'BonMot'
    gs.source_files = 'FSExtensionKit/BonMot/**/*.swift'
  end
  
  s.subspec 'R.swift' do |gs|
    gs.frameworks = 'UIKit'
    gs.dependency 'R.swift'
    gs.source_files = 'FSExtensionKit/R.swift/**/*.swift'
  end

  s.subspec 'All' do |fs|
    fs.dependency 'FSExtensionKit/UIKit'
    fs.dependency 'FSExtensionKit/CoreGraphics'
    fs.dependency 'FSExtensionKit/Foundation'
    fs.dependency 'FSExtensionKit/BonMot'
    fs.dependency 'FSExtensionKit/R.swift'
  end

#  s.subspec 'CoreStore' do |fs|
#    fs.source_files = 'ExtensionKit/CoreStore/**/*.swift'
#    fs.dependency 'CoreStore'
#  end
end
