#
# Be sure to run `pod lib lint SwiftProjects.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftProjects'
  s.version          = '0.0.23'
  s.summary          = '快速构建ios项目'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/niefeian/SwiftProjects'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '335074307@qq.com' => 'oncwnuOFQIPUqFMr48EisEyZQvmM@git.weixin.qq.com' }
  s.source           = { :git => 'https://github.com/niefeian/SwiftProjects.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftProjects/Classes/**/*'
  
#   s.resource_bundles = {
#     'SwiftProjects' => ['SwiftProjects/Assets/Xib/*.xib']
#   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
#    s.dependency 'AutoData'
#    s.dependency 'MJRefresh'
    s.dependency 'NFAFile'
    s.dependency 'NFATipsUI'
    s.dependency 'NFAToolkit'
   
    s.swift_version = '5.0'
end
