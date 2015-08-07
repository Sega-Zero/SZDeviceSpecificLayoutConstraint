Pod::Spec.new do |s|

  s.name         = "SZDeviceSpecificLayoutConstraint"
  s.version      = "0.0.1"
  s.summary      = "NSLayoutConstraint that can be adopted to a specific devices"
  s.homepage     = "https://github.com/Sega-Zero/SZDeviceSpecificLayoutConstraint"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author    = "Сергей Галездинов"
  s.social_media_url   = "http://twitter.com/SegaZero"

  s.platform     = :ios
  s.source       = { :git => "https://github.com/Sega-Zero/SZDeviceSpecificLayoutConstraint.git", :tag => "0.0.1" }

  s.source_files  = "SZDeviceSpecificLayoutConstraint.{h,m}"
  s.requires_arc = true
end
