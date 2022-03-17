#
# Be sure to run `pod lib lint lwip.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'lwip'
  s.version          = '0.1.0'
  s.summary          = 'A short description of lwip.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/hesiyuan/lwip'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hesiyuan' => 'hesiyuan@gmail.com' }
  s.source           = { :git => 'git@github.com:hosijyun/lwip-pods.git', :submodules => true }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = {
    "USER_HEADER_SEARCH_PATHS" => "$(PODS_TARGET_SRCROOT)/lwip_opts/ $(PODS_TARGET_SRCROOT)/lwip/src/include/ $(PODS_TARGET_SRCROOT)/lwip/contrib/ports/unix/port/include/",
    "CLANG_ENABLE_MODULES" => "NO"
  }
  s.user_target_xcconfig = {
    "HEADER_SEARCH_PATHS" => "${PODS_CONFIGURATION_BUILD_DIR}/lwip/lwip.framework/Headers"
  }

  s.module_map = "#{s.name}.modulemap"
  s.header_mappings_dir = 'lwip_opts'
  s.source_files = 'lwip_opts/*.h', 'lwip_opts/*.c', 'lwip/src/core/**/*.c', 'lwip/src/netif/**/*.c', 'lwip/src/api/**/*.c', 'lwip/contrib/ports/unix/port/sys_arch.c', 'lwip/contrib/ports/unix/port/netif/sio.c', 'lwip/contrib/ports/unix/port/netif/fifo.c'
  s.public_header_files = 'lwip_opts/*.h'
  s.swift_version = '5.0'

  s.subspec 'lwip' do |s|
    s.header_mappings_dir = 'lwip/src/include/'
    s.source_files = 'lwip/src/include/**/*.h'
    s.public_header_files = 'lwip/src/include/**/*.h'
  end
  s.subspec 'port' do |s|
    s.header_mappings_dir = 'lwip/contrib/ports/unix/port/include/'
    s.source_files = 'lwip/contrib/ports/unix/port/include/**/*.h'
    s.public_header_files = 'lwip/contrib/ports/unix/port/include/**/*.h'
  end


  
  # s.resource_bundles = {
  #   'lwip' => ['lwip/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
