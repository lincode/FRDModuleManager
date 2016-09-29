Pod::Spec.new do |s|

  s.name         = "FRDModuleManager"
  s.version      = "0.1.0"
  s.summary      = "FRDModuleManager can handle the call between view controller"

  s.description  = "FRDModuleManager has two components URLRoutes and Intent, using for calling view controllers inner app or outer app."
  s.homepage     = "https://github.com/lincode/FRDModuleManager"
  s.license      = { :type => 'MIT', :text => 'LICENSE.md' }
  s.author       = { "lincode" => "guolin@douban.com" }

  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/lincode/FRDModuleManager.git", :tag => "#{s.version}" }
  s.source_files  = 'FRDModuleManager/Source/**/*.{h. m}'

  s.requires_arc  = true
  s.frameworks    = 'UIKit'

end
