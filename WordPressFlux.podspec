Pod::Spec.new do |s|
  s.name             = "WordPressFlux"
  s.version          = "1.1.0-beta.1"
  s.summary          = "WordPressFlux is a Flux-inspired data flow architecture."
  s.description      = <<-DESC
                       WordPressFlux is a Flux-inspired data flow architecture. See README for details.
                       DESC
  s.author           = { "WordPress" => "mobile@automattic.com" }
  s.homepage         = "https://github.com/wordpress-mobile/WordPressFlux-iOS"
  s.license          = { :type => 'GPLv2', :file => 'LICENSE' }
  s.platform     = :ios, '10.0'
  s.requires_arc = true
  s.social_media_url = "https://twitter.com/WordPressiOS"
  s.source           = { :git => "https://github.com/wordpress-mobile/WordPressFlux-iOS.git", :tag => s.version.to_s }
  s.source_files = 'WordPressFlux/*.h', 'WordPressFlux/Sources/*.swift'
  s.swift_version = '5'
  
end
