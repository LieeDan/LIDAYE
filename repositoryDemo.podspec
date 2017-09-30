
Pod::Spec.new do |s|

  s.name         = "LiDanTest"
  s.version      = "0.0.1"
  s.summary      = "A short description of LiDanTest."
  s.homepage     = "http://www.baidu.com"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "LiDan" => "lidanlidan199@163.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "http://EXAMPLE/repositoryDemo.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  # s.dependency "JSONKit", "~> 1.4"

end
