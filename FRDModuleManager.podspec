Pod::Spec.new do |s|

  s.name         = "FRDModuleManager"
  s.version      = "0.1.0"
  s.summary      = "FRDModuleManager can organise modules easily used by UIApplicationDelegate"
  s.description  = "FRDModuleManager can organise modules easily in AppDelegate."
  s.homepage     = "https://github.com/lincode/FRDModuleManager"
  s.license      = { :type => 'MIT', :text => 'LICENSE' }
  s.author       = { "lincode" => "guolin@douban.com" }

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/lincode/FRDModuleManager.git", 
                     :tag => "#{s.version}" }

  s.source_files  = "FRDModuleManager/Source/**/*.{h,m}"
  s.frameworks    = "UIKit"
  s.requires_arc  = true

end
