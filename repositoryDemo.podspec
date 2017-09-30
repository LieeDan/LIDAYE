
Pod::Spec.new do |s|

  s.name         = "LIDAYE"
  s.version      = "0.0.1"
  s.summary      = "A short description of LIDAYE."
  s.homepage     = "http://www.baidu.com"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "LiDan" => "lidanlidan199@163.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/lidan995744723/LIDAYE.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.dependency "SnapKit"

end
