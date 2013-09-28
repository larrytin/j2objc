Pod::Spec.new do |s|
  s.name         = "simple"
  s.version      = "0.8.6.1"
  s.author       = { "Larry Tin" => "dev@goodow.com" }
  s.source       = { :git => "https://github.com/goodow/j2objc.git", :tag => "v#{s.version}" }

  s.requires_arc = true
  s.source_files = 'Classes/generated/**/*.{h,m}'
  s.header_mappings_dir = 'Classes/generated'

  s.dependency 'jre_emul'
end
