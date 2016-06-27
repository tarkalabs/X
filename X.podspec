
Pod::Spec.new do |s|
  s.name         = "X"
  s.version      = "0.1.0"
  s.summary      = "Utility classes created by soffes"

  s.description  = <<-DESC
  A bunch of utility classes created by soffes
                   DESC

  s.homepage     = "https://github.com/soffes/X"
  s.license      = "MIT (example)"
  s.author             = { "Vagmi Mudumbai" => "vagmi@tarkalabs.com" }
  s.source       = { :git => "https://github.com/soffes/X.git", :tag => "#{s.version}" }

  s.source_files  = "X", "X/**/*.{swift}", "X/**/*.{h,m}"
  s.frameworks = "Foundation"
end
