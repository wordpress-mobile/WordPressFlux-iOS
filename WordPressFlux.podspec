Pod::Spec.new do |s|
  s.name             = "WordPressFlux"
  s.version          = "1.0.0"
  s.summary          = "WordPressFlux is a Flux-inspired data flow architecture."
  s.description      = <<-DESC
                       WordPressFLux is a a Flux-inspired data flow architecture.
                       DESC
  s.homepage         = "https://github.com/wordpress-mobile/WordPressFlux-iOS"
  s.license          = { :type => 'GPLv2', :file => 'LICENSE' }
  s.author           = { "WordPress" => "mobile@automattic.com" }
  s.social_media_url = "http://twitter.com/WordPressiOS"
  s.source           = { :git => "https://github.com/wordpress-mobile/WordPressFlux-iOS.git", :tag => s.version.to_s }
  s.platform     = :ios, '10.0'
  s.requires_arc = true 
  s.source_files = 'WordPressFlux/*.h', 'WordPressFlux/Sources/*.swift'

end